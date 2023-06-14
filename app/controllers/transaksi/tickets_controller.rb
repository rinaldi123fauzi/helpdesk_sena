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
end