class Transaksi::TicketsController < ApplicationController 
  before_action :checkRole, only: %i[ create update deleteTicket]

  def listForm
    @rand = rand(111..999)
    @categories = Category.all
    @work_units = WorkUnit.all
    @areas = Area.all
    @no_ticket = Time.current.strftime('%Y%m').to_s + @rand.to_s

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
    if getRole == "kepala divisi"
      check_user = Position.left_outer_joins(:user,:role).where(['users.username = ? and roles.name = ?', current_user.username, "Engineering"])
      @check_approval = SubCategory.where('id = ? and approval_berjenjang != ?', params[:sub_layanan], 'none')
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
    else # untuk users
      @check_approval = SubCategory.where('id = ? and approval_berjenjang != ?', params[:sub_layanan], 'none')
      if @check_approval.count == 1
        @status = "created"
      else
        @status = "open"
      end
      @approval_by = params[:approval_by]
    end

    ActiveRecord::Base.transaction do
      ticket = Ticket.new
      ticket.no_ticket = params[:nomor_tiket]
      ticket.category_id = params[:layanan]
      ticket.sub_category_id = params[:sub_layanan]
      ticket.issued_by = params[:dibuat_oleh]
      ticket.description = params[:deskripsi]
      ticket.status = @status
      ticket.approval_by = @approval_by
      ticket.work_unit_id = params[:satuan_kerja]
      ticket.area_id = params[:area]
      if params[:file_tiket].present?
        params[:file_tiket].each do |data|
          ticket.file_ticket = data
        end
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
    end
  end

  def update
    if getRole == "kepala divisi"
      check_user = Position.left_outer_joins(:user,:role).where(['users.username = ? and roles.name = ?', params[:dibuat_oleh], "Engineering"])
      @check_approval = SubCategory.where('id = ? and approval_berjenjang != ?', params[:sub_layanan], 'none')
      if check_user.count == 1
        if @check_approval.first.approval_berjenjang == "none"
          @status = "open"
        else
          check_manajer_it = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ?', 'manajer it').select('users.username').first
          @status = "approval3"
          @approval_by = check_manajer_it.username
        end
      else
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
    else
      @check_approval = SubCategory.where(['id = ? and approval_berjenjang != ? ', params[:sub_layanan], 'none'])
      if @check_approval.count == 1
        @status = "created"
      else
        @status = "open"
      end
      @approval_by = params[:approval_by]
    end

    ActiveRecord::Base.transaction do
      ticket = Ticket.find_by_id(params[:id_tiket])
      ticket.no_ticket = params[:nomor_tiket]
      ticket.category_id = params[:layanan]
      ticket.sub_category_id = params[:sub_layanan]
      ticket.issued_by = params[:dibuat_oleh]
      ticket.status = @status
      ticket.description = params[:deskripsi]
      ticket.approval_by = @approval_by
      ticket.work_unit_id = params[:satuan_kerja]
      ticket.area_id = params[:area]
      if params[:file_tiket].present?
        params[:file_tiket].each do |data|
          ticket.file_ticket = data
        end
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
    @getStatus = Ticket.where('id = ?', @id)
    @data = Ticket.find(@id)
    @history = Approval.where(ticket_id: @id).order(:created_at => :desc)
    @data_history = []
    @data_attach = []

    @data.file_ticket.order(:created_at => :desc).each do |data|
      @data_attach.push(
        "link" => url_for(data),
        "nama_file" => data.filename
      )
    end

    @history.each do |data|
      @data_history.push(
        "created_at" => data.created_at.strftime('%d %b %Y %H:%M:%S'),
        "issued_by" => data.issued_by,
        "approve_level" => data.approve_level,
        "description" => data.description
      )
    end
    
    render json:{
      data_ticket:{
        nomor_tiket: @data.no_ticket,
        dibuat_oleh: @data.issued_by,
        layanan: @data.category.nama_kategori,
        sub_layanan: @data.sub_category.nama_sub_kategori,
        satuan_kerja: @data.work_unit.nama,
        area: @data.area.nama,
        deskripsi: @data.description,
        teknisi: @data.assigned_by,
        status: @data.status,
        approval_by: @data.approval_by,
        pause_respon: @data.pause_respon,
        current_user: getRole,
        user: current_user.username,
        file: @data_attach,
        history: @data_history,
        pending_approval: @getStatus.first
      }
    }
  end

  def getApprovalBerjenjang
    if getRole == "kepala divisi"
      render json:{
        status_approval: "none"
      }
    else
      data_sub_category = SubCategory.find_by_id(params[:id])
      data = RoleAssignment.left_outer_joins(:role,:user).select('users.username')
  
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
end