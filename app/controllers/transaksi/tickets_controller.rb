class Transaksi::TicketsController < ApplicationController 
  before_action :checkRole, only: %i[ create update deleteTicket]
  
  def listForm
    begin
      @categories = Category.all
      @work_units = WorkUnit.all
      @areas = Area.all

      render json:[
        'categories' => @categories,
        'work_units' => @work_units,
        'areas' => @areas,
        'dibuat_oleh' => current_user.username
      ]
    rescue StandardError => e
      txError(e)
    end
  end

  def listSubCategory
    begin
      @data = SubCategory.where(category_id: params[:category_id])
      render json:[
        'sub_category' => @data
      ]
    rescue StandardError => e
      txError(e)
    end
  end

  def create
    begin
      @no_ticket = NumberingTicketService.call()
      if params[:layanan].length >= 1
        if params[:sub_layanan].length >= 1
          @data = TicketService.call(params[:sub_layanan],params[:approval_by],current_user.username,getRole)
          ActiveRecord::Base.transaction do
            Ticket.transaction do
              ticket = Ticket.new
              ticket.no_ticket = @no_ticket
              ticket.category_id = params[:layanan]
              ticket.sub_category_id = params[:sub_layanan]
              ticket.issued_by = params[:dibuat_oleh]
              ticket.description = params[:deskripsi]
              ticket.status = @data[0]
              ticket.approval_by = @data[1]
              ticket.work_unit_id = params[:satuan_kerja]
              ticket.area_id = params[:area]
              if params[:file_tiket].present?
                if params[:size_file].to_i <= ENV['MAX_UPLOAD'].to_i
                  params[:file_tiket].each do |data|
                    ticket.file_ticket = data
                  end

                  if ticket.save
                    unless @data[1].nil?
                      sendNotifEmail(@data[1], ticket)
                    end
                    render json:{
                      status: 200
                    }
                    flash[:notice] = "Data berhasil disimpan"
                  else
                    render json:{
                      status: 500,
                      msg: ticket.errors
                    }
                    txError(ticket.errors.to_json)
                  end
                else
                  render json:{
                    status: 204
                  }
                end
              else
                if ticket.save
                  unless @data[1].nil?
                    sendNotifEmail(@data[1], ticket)
                  end
                  render json:{
                    status: 200
                  }
                  flash[:notice] = "Data berhasil disimpan"
                else
                  render json:{
                    status: 500,
                    msg: ticket.errors
                  }
                  txError(ticket.errors.to_json)
                end
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
    rescue StandardError => e
      txError(e)
    end
  end

  def update
    begin
      if params[:layanan].length >= 1
        if params[:sub_layanan].length >= 1
          @data = TicketService.call(params[:sub_layanan],params[:approval_by],current_user.username,getRole)
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
              if params[:size_file].to_i <= ENV['MAX_UPLOAD'].to_i
                params[:file_tiket].each do |data|
                  ticket.file_ticket = data
                end

                if ticket.save
                  unless @data[1].nil?
                    sendNotifEmail(@data[1], ticket)
                  end
                  render json: { 
                    status: 200
                  }
                  flash[:notice] = "Data berhasil disimpan"
                else
                  render json: { 
                    status: 500,
                    msg: ticket.errors
                  }
                  txError(ticket.errors.to_json)
                end
              else
                render json:{
                  status: 204
                }
              end
            else
              if ticket.save
                unless @data[1].nil?
                  sendNotifEmail(@data[1], ticket)
                end
                render json: { 
                  status: 200
                }
                flash[:notice] = "Data berhasil disimpan"
              else
                render json: { 
                  status: 500,
                  msg: ticket.errors
                }
                txError(ticket.errors.to_json)
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
    rescue StandardError => e
      txError(e)
    end
  end

  def sendNotifEmail(username, ticket)
    @token = rand(1111..9999)
    users = User.where(username: username)
    if users.count == 1
      user = users.first
      user.token = @token
      user.save

      ticket = Ticket.find_by(id: ticket.id)
      ticket.token = @token
      ticket.save
      SenderEmail.create!(
        email_to: user.email,
        parent_id: ticket.id,
        token: user.token,
        status: 'not-yet-sent'
      )
      @sender = SenderEmail.last
      Resque.enqueue_in(0, SenderEmailWorker, @sender.id)
    end
  end

  def deleteTicket
    begin
      @attachment = ActiveStorage::Attachment.find_by_record_id(params[:id])
      unless @attachment.nil?
        @attachment.purge
      end
    rescue StandardError => e
      txError(e)
      puts "data tidak ada"
    end

    @data = Ticket.find(params[:id]).destroy
    if (@data)
      render json: {
          success: true,
          status: 200
      }
      flash[:notice] = "Data berhasil dihapus"
    else
      txError(@data.errors.to_json)
    end
  end

  def detailTicket
    begin
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
    rescue StandardError => e
      txError(e)
    end
  end

  def detail
    begin
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
    rescue StandardError => e
      txError(e)
    end
  end

  def getApprovalBerjenjang
    begin
      if getRole.include? "kepala divisi" or getRole.include? "teknisi" or getRole.include? "manajer it"
        render json:{
          status_approval: "none"
        }
      else
        data_sub_category = SubCategory.find_by_id(params[:id])
        data = RoleAssignment.left_outer_joins(:role,:user).where('roles.name IN (?)', ['kepala divisi', 'user']).where.not('users.username = ?', current_user.username).select('users.username')
    
        render json:{
          status_approval: data_sub_category.approval_berjenjang,
          template_ticket: data_sub_category.template_ticket,
          user: data
        }
      end
    rescue StandardError => e
      txError(e)
    end
  end

  def getSatuanKerja
    begin
      @users = RoleAssignment.left_outer_joins(:role,:user).where('roles.name = :value', :value => "user").select('users.username')
      @user = Position.left_outer_joins(:user).where(work_unit_id: params[:id]).select('users.username').first
      @status = Position.where(work_unit_id: params[:id]).select('punya_pm').first
      render json:{
        username: @user.username,
        status: @status,
        user_biasa: @users
      }
    rescue StandardError => e
      txError(e)
    end
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