class Transaksi::TeknisiController < ApplicationController 
  before_action :checkRole

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

  def takeTicket
    tickets = Ticket.where(id: params[:id], status: 'open')
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
      ticket.inprogress_respon = Time.current
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
        flash[:notice] = "Data tidak berhasil disimpan"
      end   
    else
      render json:{
        status: 404,
        msg: ticket.errors
      }
      flash[:notice] = "Data tidak tersedia"
    end
  end

  def eskalasi
    check_ticket = Ticket.where(id: params[:id], status: 'inprogress')
    if params[:deskripsi].length >= 1
      if params[:deskripsi].length <= 100
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
      else
        render json:{
          status: 203,
          msg: "panjang karakter maksimal 100"
        }
      end
    else
      render json:{
        status: 204,
        msg: "deskripsi tidak boleh kosong"
      }
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

  private
  def checkRole
    unless current_user.can? { |permissions| permissions.teknisi.manage? } 
      render json:{
        status: 401,
        msg: "Unauthorized"
      }
    end
  end
end