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
    @check_approval = SubCategory.where('id = ? and approval_berjenjang != ?', params[:sub_layanan], 'none')
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

    ticket = Ticket.last
    Approval.create!(
      :issued_by => current_user.username,
      :approve_level => @status,
      :description => 'create ticket',
      :ticket_id => ticket.id
    )

    render json: { 
      "status" => "tersimpan"
    }
    flash[:notice] = "Data berhasil disimpan"
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

    ticket = Ticket.find_by_id(params[:id])
    Approval.create!(
      :issued_by => params[:teknisi],
      :approve_level => ticket.status,
      :description => 'tiket sedang diproses',
      :ticket_id => ticket.id
    )

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

    ticket = Ticket.find_by_id(params[:id])
    Approval.create!(
      :issued_by => current_user.username,
      :approve_level => ticket.status,
      :description => 'tiket sudah selesai',
      :ticket_id => ticket.id
    )

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
    @history = Approval.where(ticket_id: params[:id]).order(:created_at => :desc)
    @satuan_kerja = Position.find_by_user_id(current_user.id)
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
        pause_respon: @data.pause_respon,
        current_user: getRole,
        user: current_user.username,
        file: @data_attach,
        history: @data_history,
        satuan_kerja1: @satuan_kerja ? @satuan_kerja.work_unit.nama : ""
      }
    }
  end

  def getApprovalBerjenjang
    # data_user = []
    data_sub_category = SubCategory.find_by_id(params[:id])
    # role_assignments = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ? or roles.name = ?', 'kepala divisi', 'projek manajer').select('users.username')
    # role_assignments.each do |user|
    #   data_user.push(
    #     "username" => user.username
    #   )
    # end

    data = Position.left_outer_joins(:work_unit,:user,:role).where.not('work_units.nama = ? and roles.name = ?', 'Engineering', 'kepala divisi').select('users.username')

    render json:{
      status_approval: data_sub_category.approval_berjenjang,
      user: data
    }
  end

  def approval
    check_ticket = Ticket.find_by_id(params[:id])

    if check_ticket.status == "created"
      
      if check_ticket.sub_category.approval_berjenjang == "low"
        check_manajer_it = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ?', 'manajer it').select('users.username').first
        approval_by = check_manajer_it.username
      elsif check_ticket.sub_category.approval_berjenjang == "medium"
        check_kadiv = Position.left_outer_joins(:work_unit,:user).where('work_units.nama = ?', 'Engineering').select('users.username').first
        approval_by = check_kadiv.username
      end
      Approval.create!(
        :issued_by => current_user.username,
        :approve_level => 'approval1',
        :description => 'tiket disetujui',
        :ticket_id => params[:id],
      )
      data = Ticket.find_by_id(params[:id])
      data.status = 'approval1'
      data.approval_by =  approval_by
      data.save
  
      if data.save
        render json:{
          status: 200
        }
        flash[:notice] = "Data berhasil disimpan"
      end

    elsif check_ticket.status == "approval1"
      check_manajer_it = RoleAssignment.left_outer_joins(:role, :user).where('roles.name = ?', 'manajer it').select('users.username').first
      if check_ticket.sub_category.approval_berjenjang == "low"
        @status = "open"
      elsif check_ticket.sub_category.approval_berjenjang == "medium"
        @status = "approval2"
      end
      Approval.create!(
        :issued_by => current_user.username,
        :approve_level => 'approval2',
        :description => 'tiket disetujui',
        :ticket_id => params[:id],
      )
      data = Ticket.find_by_id(params[:id])
      data.status = @status
      data.approval_by = check_manajer_it.username
      data.save
  
      if data.save
        render json:{
          status: 200
        }
        flash[:notice] = "Data berhasil disimpan"
      end
    elsif check_ticket.status == "approval2"
      if check_ticket.sub_category.approval_berjenjang == "low"
        @status = "approval2"
      elsif check_ticket.sub_category.approval_berjenjang == "medium"
        @status = "approval3"
      end
      Approval.create!(
        :issued_by => current_user.username,
        :approve_level => @status,
        :description => 'tiket disetujui',
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

  def takeTicket
    tickets = Ticket.where(status: 'open')
    if tickets.count == 1
      ticket = tickets.first
      Approval.create!(
        :issued_by => current_user.username,
        :approve_level => 'inprogress',
        :ticket_id => ticket.id,
        :description => 'tiket sedang diproses'
      )
      ticket.status = 'inprogress'
      ticket.assigned_by = current_user.username
      if ticket.save
        render json:{
          status: 200,
        }
        flash[:notice] = "Data berhasil disimpan"
      else
        render json:{
          status: 500,
          msg: ticket.errors
        }
        flash[:notice] = "Data berhasil disimpan"
      end   
    else
      render json:{
        status: 404,
        msg: ticket.errors
      }
      flash[:notice] = "Data berhasil disimpan"
    end
  end

  def reject
    check_ticket = Ticket.find_by_id(params[:id])
    if check_ticket.status == "created" || check_ticket.status == "approval1"
      Approval.create!(
        :issued_by => current_user.username,
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

  def eskalasi
    check_ticket = Ticket.where(id: params[:id], status: 'inprogress')
    if check_ticket.count == 1
      Approval.create!(
        :issued_by => current_user.username,
        :approve_level => 'open',
        :ticket_id => params[:id],
        :description => params[:deskripsi]
      )
      data = Ticket.find_by_id(params[:id])
      data.status = 'open'
      data.pause_respon = 1
  
      if data.save
        render json:{
          status: 200
        }
        flash[:notice] = "Data berhasil disimpan"
      end
    end
  end

  def proccessTicket
    check_ticket = Ticket.where(id: params[:id], status: 'open', pause_respon: 1)
    if check_ticket.count == 1
      ticket = check_ticket.first
      ticket.status = 'inprogress'
      ticket.pause_respon = 0
      ticket.save

      ticket = Ticket.find_by_id(params[:id])
      Approval.create!(
        :issued_by => current_user.username,
        :approve_level => ticket.status,
        :ticket_id => ticket.id,
        :description => "tiket diproses kembali"
      )
      
      if ticket.save
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