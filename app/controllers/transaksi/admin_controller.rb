class Transaksi::TicketsController < ApplicationController 
  before_action :checkRole
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

  private
  
  def checkRole
    unless current_user.can? { |permissions| permissions.admin.manage? } 
      render json:{
        status: 401,
        msg: "Unauthorized"
      }
    end
  end
end