class Transaksi::TicketsController < ApplicationController 
  before_action :checkRole, only: %i[ create update deleteTicket]

  def listForm
    ticket = Ticket.where("extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ? ", Time.current.strftime('%Y'), Time.current.strftime('%m')).last
    sequence_number = "001"
    if Ticket.exists? and (Time.current.strftime('%m') == ticket.created_at.strftime("%m"))
      sequence_number = ticket.no_ticket[6..8]
      int_sequence_number = Integer(sequence_number, 10) + 1
      zero_length = 3 - int_sequence_number.to_s.size
      i = 0
      sequence_number = ""
      while i < zero_length  do
        sequence_number += "0"
        i +=1
      end
      sequence_number += int_sequence_number.to_s
    end

    @categories = Category.all
    @work_units = WorkUnit.all
    @areas = Area.all
    @no_ticket = Time.current.strftime('%Y%m').to_s + sequence_number

    render json:[
      'categories' => @categories,
      'work_units' => @work_units,
      'areas' => @areas,
      'dibuat_oleh' => current_user.username,
      'no_ticket' => @no_ticket
    ]
  end

  def listSubCategory
    @data = SubCategory.where(category_id: params[:category_id])
    render json:[
      'sub_category' => @data
    ]
  end

  def create
    if params[:layanan].length >= 1
      if params[:sub_layanan].length >= 1
        @data = check_flow(params[:sub_layanan],params[:approval_by])
        ActiveRecord::Base.transaction do
          ticket = Ticket.new
          ticket.no_ticket = params[:nomor_tiket]
          ticket.category_id = params[:layanan]
          ticket.sub_category_id = params[:sub_layanan]
          ticket.issued_by = params[:dibuat_oleh]
          ticket.description = params[:deskripsi]
          ticket.status = @data[0]
          ticket.approval_by = @data[1]
          ticket.work_unit_id = params[:satuan_kerja]
          ticket.area_id = params[:area]
          if params[:file_tiket].present?
            if params[:size_file].to_i <= 4
              params[:file_tiket].each do |data|
                ticket.file_ticket = data
              end

              if ticket.save
                render json:{
                  status: 200
                }
                flash[:notice] = "Data berhasil disimpan"
              else
                render json:{
                  status: 500,
                  msg: ticket.errors
                }
              end
            else
              render json:{
                status: 204
              }
            end
          else
            if ticket.save
              render json:{
                status: 200
              }
              flash[:notice] = "Data berhasil disimpan"
            else
              render json:{
                status: 500,
                msg: ticket.errors
              }
            end
          end
        end
      else
        render json:{
          status: 500,
          kategori: "sub layanan",
          msg: "Sub layanan tidak boleh kosong"
        }
      end
    else
      render json:{
        status: 500,
        kategori: "layanan",
        msg: "Layanan tidak boleh kosong"
      }
    end
  end

  def update
    if params[:layanan].length >= 1
      if params[:sub_layanan].length >= 1
        @data = check_flow(params[:sub_layanan],params[:approval_by])
        ActiveRecord::Base.transaction do
          ticket = Ticket.find_by_id(params[:id_tiket])
          ticket.no_ticket = params[:nomor_tiket]
          ticket.category_id = params[:layanan]
          ticket.sub_category_id = params[:sub_layanan]
          ticket.issued_by = params[:dibuat_oleh]
          ticket.status = @data[0]
          ticket.description = params[:deskripsi]
          ticket.approval_by = @data[1]
          ticket.work_unit_id = params[:satuan_kerja]
          ticket.area_id = params[:area]
          if params[:file_tiket].present?
            if params[:size_file].to_i <= 4
              params[:file_tiket].each do |data|
                ticket.file_ticket = data
              end

              if ticket.save
                render json: { 
                  status: 200
                }
                flash[:notice] = "Data berhasil disimpan"
              else
                render json: { 
                  status: 500,
                  msg: ticket.errors
                }
              end
            else
              render json:{
                status: 204
              }
            end
          else
            if ticket.save
              render json: { 
                status: 200
              }
              flash[:notice] = "Data berhasil disimpan"
            else
              render json: { 
                status: 500,
                msg: ticket.errors
              }
            end
          end
        end
      else
        render json:{
          status: 500,
          kategori: "sub layanan",
          msg: "Sub layanan tidak boleh kosong"
        }
      end
    else
      render json:{
        status: 500,
        kategori: "layanan",
        msg: "Layanan tidak boleh kosong"
      }
    end
  end

  def deleteTicket
    begin
      @attachment = ActiveStorage::Attachment.find_by_record_id(params[:id])
      unless @attachment.nil?
        @attachment.purge
      end
    rescue
      puts "data tidak ada"
    end

    @data = Ticket.find(params[:id]).destroy
    if (@data)
      render json: {
          success: true,
          status: 200
      }
      flash[:notice] = "Data berhasil dihapus"
    end
  end

  def detailTicket
    @data = Ticket.find(params[:id])
    @categories = Category.all
    @sub_categories = SubCategory.all
    @work_units = WorkUnit.all
    @areas = Area.all
    render json: [
      'data_ticket' => @data,
      'categories' => @categories,
      'sub_categories' => @sub_categories,
      'work_units' => @work_units,
      'areas' => @areas,
    ]
  end

  def detail
    @id = params[:id]
    @data = Ticket.find(@id)

    render json:{
      data_ticket: ActiveModelSerializers::SerializableResource.new(@data, 
        each_serializer: TicketSerializer, 
        role: getRole, 
        current_user: current_user.username,
        file: @data.file_ticket,
        nama_kategori: @data.category.nama_kategori,
        nama_sub_kategori: @data.sub_category.nama_sub_kategori,
        work_unit: @data.work_unit.nama,
        area: @data.area.nama
      )
    }, status: :ok
  end

  def getApprovalBerjenjang
    if getRole.include? "kepala divisi" or getRole.include? "teknisi" or getRole.include? "manajer it"
      render json:{
        status_approval: "none"
      }
    else
      data_sub_category = SubCategory.find_by_id(params[:id])
      data = RoleAssignment.left_outer_joins(:role,:user).where('roles.name IN (?)', ['kepala divisi', 'user', 'manajer it']).select('users.username')
  
      render json:{
        status_approval: data_sub_category.approval_berjenjang,
        template_ticket: data_sub_category.template_ticket,
        user: data
      }
    end
  end

  def getSatuanKerja
    @users = RoleAssignment.left_outer_joins(:role,:user).where('roles.name = :value', :value => "user").select('users.username')
    @user = Position.left_outer_joins(:user).where(work_unit_id: params[:id]).select('users.username').first
    @status = Position.where(work_unit_id: params[:id]).select('punya_pm').first
    render json:{
      username: @user.username,
      status: @status,
      user_biasa: @users
    }
  end

  private
  def checkRole
    unless current_user.can? { |permissions| permissions.tiketnich.manage? } 
      render json:{
        status: 401,
        msg: "Unauthorized"
      }
    end
  end

  def check_flow(sub_layanan, approval_by)
    if getRole.include? "kepala divisi"
      check_user = Position.left_outer_joins(:user,:role).where(['users.username = ? and roles.name = ?', current_user.username, "Engineering"])
      @check_approval = SubCategory.where('id = ? and approval_berjenjang != ?', sub_layanan, 'none')
      if check_user.count == 1 # untuk role Engineering
        if @check_approval.first.approval_berjenjang == "none"
          @status = "open"
        else
          check_manajer_it = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ?', 'manajer it').select('users.username').first
          @status = "approval3"
          @approval_by = check_manajer_it.username
        end
      else # untuk role selain Engineering
        if @check_approval.count == 1
          if @check_approval.first.approval_berjenjang == "low"
            check_manajer_it = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ?', 'manajer it').select('users.username').first
            @status = "approval3"
            @approval_by = check_manajer_it.username
          elsif @check_approval.first.approval_berjenjang == "medium"
            check_kadiv = Position.left_outer_joins(:work_unit,:user).where('work_units.nama = ?', 'Engineering').select('users.username').first
            @status = "approval2"
            @approval_by = check_kadiv.username
          end
        else
          @status = "open"
        end
      end
    elsif getRole.include? "user" # untuk users
      @check_approval = SubCategory.where('id = ? and approval_berjenjang != ?', sub_layanan, 'none')
      if @check_approval.count == 1
        @status = "created"
      else
        @status = "open"
      end
      @approval_by = approval_by
    else
      @status = "open"
    end
    
    return @status, @approval_by
  end
end