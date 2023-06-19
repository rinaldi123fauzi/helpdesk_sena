class Transaksi::TicketsController < ApplicationController 
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
    @check_approval = SubCategory.where(id: params[:sub_layanan], approval_berjenjang: true)
    if @check_approval.count == 1
      @status = "created"
    else
      @status = "open"
    end
    ActiveRecord::Base.transaction do
      ticket = Ticket.new
      ticket.no_ticket = params[:nomor_tiket]
      ticket.category_id = params[:layanan]
      ticket.sub_category_id = params[:sub_layanan]
      ticket.issued_by = params[:dibuat_oleh]
      ticket.description = params[:deskripsi]
      ticket.status = @status
      ticket.approval_by = params[:approval_by]
      ticket.work_unit_id = params[:satuan_kerja]
      ticket.area_id = params[:area]
      if params[:file_tiket].present?
        params[:file_tiket].each do |data|
          ticket.file_ticket = data
        end
      end
      ticket.save!
    end

    render json: { 
      "status" => "tersimpan"
    }
  end

  def update
    @check_approval = SubCategory.where(id: params[:sub_layanan], approval_berjenjang: true)
    if @check_approval.count == 1
      @status = "created"
    else
      @status = "open"
    end
    ActiveRecord::Base.transaction do
      ticket = Ticket.find_by_id(params[:id_tiket])
      ticket.no_ticket = params[:nomor_tiket]
      ticket.category_id = params[:layanan]
      ticket.sub_category_id = params[:sub_layanan]
      ticket.issued_by = params[:dibuat_oleh]
      ticket.status = @status
      ticket.description = params[:deskripsi]
      ticket.approval_by = params[:approval_by]
      ticket.work_unit_id = params[:satuan_kerja]
      ticket.area_id = params[:area]
      if params[:file_tiket].present?
        params[:file_tiket].each do |data|
          ticket.file_ticket = data
        end
      end
      ticket.save
    end

    render json: { 
      "status" => "tersimpan"
    }
  end

  def assignTicket
    ticket = Ticket.find_by_id(params[:id])
    ticket.assigned_by = params[:teknisi]
    ticket.created_respon = Time.current
    ticket.inprogress_respon = Time.current
    ticket.status = "inprogress"
    ticket.save

    render json:{
      status: "tersimpan"
    }
    flash[:notice] = "Data berhasil disimpan"
  end

  def ticketClose
    ticket = Ticket.find_by_id(params[:id])
    ticket.status = "closed"
    ticket.closed_respon = Time.current
    ticket.save

    render json:{
      status: "tersimpan"
    }
    flash[:notice] = "Data berhasil disimpan"
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
    @data = Ticket.find(params[:id])

    @data_attach = []

    @data.file_ticket.order(:created_at => :desc).each do |data|
      @data_attach.push(
        "link" => url_for(data),
        "nama_file" => data.filename
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
        current_user: getRole,
        file: @data_attach
      }
    }
  end

  def getApprovalBerjenjang
    data_user = []
    data_sub_category = SubCategory.find_by_id(params[:id])
    role_assignments = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ? or roles.name = ?', 'kepala divisi', 'projek manajer').select('users.username')
    role_assignments.each do |user|
      data_user.push(
        "username" => user.username
      )
    end

    render json:{
      status_approval: data_sub_category.approval_berjenjang,
      user: data_user
    }
  end

  def approval
    check_ticket = Ticket.find_by_id(params[:id])

    if check_ticket.status == "created"
      check_manajer_it = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ?', 'manajer it').select('users.username').first
      Approval.create!(
        :approve_by => current_user.username,
        :approve_level => 'approval1',
        :ticket_id => params[:id],
      )
      data = Ticket.find_by_id(params[:id])
      data.status = 'approval1'
      data.approval_by =  check_manajer_it.username
      data.save
  
      if data.save
        render json:{
          status: 200
        }
        flash[:notice] = "Data berhasil disimpan"
      end
    elsif check_ticket.status == "approval1"
      Approval.create!(
        :approve_by => current_user.username,
        :approve_level => 'approval2',
        :ticket_id => params[:id],
      )
      data = Ticket.find_by_id(params[:id])
      data.status = 'open'
      data.save
  
      if data.save
        render json:{
          status: 200
        }
        flash[:notice] = "Data berhasil disimpan"
      end
    end
  end

  def reject
    check_ticket = Ticket.find_by_id(params[:id])
    if check_ticket.status == "created" || check_ticket.status == "approval1"
      Approval.create!(
        :approve_by => current_user.username,
        :approve_level => 'rejected',
        :ticket_id => params[:id],
        :description => params[:deskripsi]
      )
      data = Ticket.find_by_id(params[:id])
      data.status = 'rejected'
      data.approval_by = current_user.username
  
      if data.save
        render json:{
          status: 200
        }
        flash[:notice] = "Data berhasil disimpan"
      end
    end
  end

  def getRole
    @roleAssign = RoleAssignment.left_outer_joins(:role).where(user_id: current_user.id).select('roles.name AS nameroles, role_assignments.role_id')
    @value = @roleAssign.each_with_index.map { |role| "#{role.try(:nameroles)}" }.join(", ").gsub(",","")
    return @value
  end
end