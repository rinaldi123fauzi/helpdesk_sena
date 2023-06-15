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
    ActiveRecord::Base.transaction do
      ticket = Ticket.new
      ticket.no_ticket = params[:nomor_tiket]
      ticket.category_id = params[:layanan]
      ticket.sub_category_id = params[:sub_layanan]
      ticket.issued_by = params[:dibuat_oleh]
      ticket.description = params[:deskripsi]
      ticket.status = "created"
      ticket.work_unit_id = params[:satuan_kerja]
      ticket.area_id = params[:area]
      if params[:file_tiket].present?
        ticket.file_ticket = params[:file_tiket]
      end
      ticket.save!
    end

    render json: { 
      "status" => "tersimpan"
    }
  end

  def update
    ActiveRecord::Base.transaction do
      ticket = Ticket.find_by_id(params[:id])
      ticket.no_ticket = params[:nomor_tiket]
      ticket.category_id = params[:layanan]
      ticket.sub_category_id = params[:sub_layanan]
      ticket.issued_by = params[:dibuat_oleh]
      ticket.description = params[:deskripsi]
      ticket.work_unit_id = params[:satuan_kerja]
      ticket.area_id = params[:area]
      if params[:file_tiket].present?
        ticket.file_ticket = params[:file_tiket]
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
    ticket.status = "assigned"
    ticket.save

    render json:[
      "status" => "tersimpan"
    ]
  end

  def ticketClose
    ticket = Ticket.find_by_id(params[:id])
    ticket.status = "closed"
    ticket.save

    render json:[
      "status" => "tersimpan"
    ]
  end

  def deleteTicket
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
        status: @data.status
      }
    }
  end
end