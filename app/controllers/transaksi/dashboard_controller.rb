class Transaksi::DashboardController < ApplicationController 
  def getAll

    # if params[:tahun].present?
      @tahun = params[:tahun]
    # else
    #   @tahun = Time.now.strftime('%Y')
    # end

    array_open = []
    array_approval = []
    array_overdue = []
    array_inprogress = []
    array_created = []
    array_closed = []
    array_rejected = []
    for a in 1..12 do
      if a <= 9
        bulan = "0"+a.to_s
      else
        bulan = a.to_s
      end

      # open
      @open = Ticket.where("status = ? and extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ?", 'open', @tahun, bulan).count
      array_open.push(
        'amount' => @open
      )

      # approval
      @approval = Ticket.where("status IN (?) and extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ?", ['approval1','approval2','approval3'], @tahun, bulan).count
      array_approval.push(
        'amount' => @approval
      )

      # overdue
      @overdue = Ticket.where("status = ? and extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ?", 'overdue', @tahun, bulan).count
      array_overdue.push(
        'amount' => @overdue
      )

      # inprogress
      @inprogress = Ticket.where("status = ? and extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ?", 'inprogress', @tahun, bulan).count
      array_inprogress.push(
        'amount' => @inprogress
      )

      # created
      @created = Ticket.where("status = ? and extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ?", 'created', @tahun, bulan).count
      array_created.push(
        'amount' => @created
      )

      # closed
      @closed = Ticket.where("status = ? and extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ?", 'closed', @tahun, bulan).count
      array_closed.push(
        'amount' => @closed
      )

      # rejected
      @rejected = Ticket.where("status = ? and extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ?", 'rejected', @tahun, bulan).count
      array_rejected.push(
        'amount' => @rejected
      )
    end

    render json: {
      grafik_dashboard:{
        open: array_open,
        closed: array_closed,
        created: array_created,
        approval: array_approval,
        overdue: array_overdue,
        inprogress: array_inprogress,
        rejected: array_rejected
      }
    }
  end
end