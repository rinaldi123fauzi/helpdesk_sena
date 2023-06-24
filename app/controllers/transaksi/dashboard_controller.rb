class Transaksi::DashboardController < ApplicationController 
  def getAll

    if params[:tahun].present?
      @tahun = params[:tahun]
    else
      @tahun = Time.now.strftime('%Y')
    end

    # open
    array_open = []
    for a in 1..12 do
      if a <= 9
        bulan = "0"+a.to_s
      else
        bulan = a.to_s
      end
      @open = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'open', @tahun, bulan).count
      array_open.push(
        'amount' => @open
      )
    end

    # approval
    array_approval = []
    for a in 1..12 do
      if a <= 9
        bulan = "0"+a.to_s
      else
        bulan = a.to_s
      end
      @approval = Ticket.where('status IN (?) and extract(year from created_at) = ? and extract(month from created_at) = ?', ['approval1','approval2','approval3'], @tahun, bulan).count
      array_approval.push(
        'amount' => @approval
      )
    end

    # overdue
    array_overdue = []
    for a in 1..12 do
      if a <= 9
        bulan = "0"+a.to_s
      else
        bulan = a.to_s
      end
      @overdue = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'overdue', @tahun, bulan).count
      array_overdue.push(
        'amount' => @overdue
      )
    end

    # inprogress
    array_inprogress = []
    for a in 1..12 do
      if a <= 9
        bulan = "0"+a.to_s
      else
        bulan = a.to_s
      end
      @inprogress = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'inprogress', @tahun, bulan).count
      array_inprogress.push(
        'amount' => @inprogress
      )
    end

    # created
    array_created = []
    for a in 1..12 do
      if a <= 9
        bulan = "0"+a.to_s
      else
        bulan = a.to_s
      end
      @created = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'created', @tahun, bulan).count
      array_created.push(
        'amount' => @created
      )
    end

    # closed
    array_closed = []
    for a in 1..12 do
      if a <= 9
        bulan = "0"+a.to_s
      else
        bulan = a.to_s
      end
      @closed = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'closed', @tahun, bulan).count
      array_closed.push(
        'amount' => @closed
      )
    end

    # rejected
    array_rejected = []
    for a in 1..12 do
      if a <= 9
        bulan = "0"+a.to_s
      else
        bulan = a.to_s
      end
      @rejected = Ticket.where('status = ? and extract(year from created_at) = ? and extract(month from created_at) = ?', 'rejected', @tahun, bulan).count
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