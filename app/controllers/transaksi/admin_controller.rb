class Transaksi::AdminController < ApplicationController 
  before_action :checkRole
  def assignTicket
    begin
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
    rescue StandardError => e
      txError(e)
    end
  end

  private
  
  def checkRole
    if getRole.include? "user" or getRole.include? "kepala divisi"
      render json:{
        status: 401,
        msg: "Unauthorized"
      }
    end
  end
end