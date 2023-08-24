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

    if current_user.roles.any? {|r| r.name == "user" || r.name == "kepala divisi"}
      for a in 1..12 do
        if a <= 9
          bulan = "0"+a.to_s
        else
          bulan = a.to_s
        end

        # open
        @open = Ticket.where(["issued_by = ? and status = ? and extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ?", current_user.username, 'open', @tahun, bulan]).count
        array_open.push(
          'amount' => @open
        )

        # approval
        @approval = Ticket.where(["issued_by = ? and status IN (?) and extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ?", current_user.username, ['approval1','approval2','approval3'], @tahun, bulan]).count
        array_approval.push(
          'amount' => @approval
        )

        # overdue
        @overdue = Ticket.where(["issued_by = ? and status = ? and extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ?", current_user.username, 'overdue', @tahun, bulan]).count
        array_overdue.push(
          'amount' => @overdue
        )

        # inprogress
        @inprogress = Ticket.where(["issued_by = ? and status = ? and extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ?", current_user.username, 'inprogress', @tahun, bulan]).count
        array_inprogress.push(
          'amount' => @inprogress
        )

        # created
        @created = Ticket.where(["issued_by = ? and status = ? and extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ?", current_user.username, 'created', @tahun, bulan]).count
        array_created.push(
          'amount' => @created
        )

        # closed
        @closed = Ticket.where(["issued_by = ? and status = ? and extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ?", current_user.username, 'closed', @tahun, bulan]).count
        array_closed.push(
          'amount' => @closed
        )

        # rejected
        @rejected = Ticket.where(["issued_by = ? and status = ? and extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ?", current_user.username, 'rejected', @tahun, bulan]).count
        array_rejected.push(
          'amount' => @rejected
        )
      end
    else
      for a in 1..12 do
        if a <= 9
          bulan = "0"+a.to_s
        else
          bulan = a.to_s
        end

        # open
        @open = Ticket.where(["status = ? and extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ?", 'open', @tahun, bulan]).count
        array_open.push(
          'amount' => @open
        )

        # approval
        @approval = Ticket.where(["status IN (?) and extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ?", ['approval1','approval2','approval3'], @tahun, bulan]).count
        array_approval.push(
          'amount' => @approval
        )

        # overdue
        @overdue = Ticket.where(["status = ? and extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ?", 'overdue', @tahun, bulan]).count
        array_overdue.push(
          'amount' => @overdue
        )

        # inprogress
        @inprogress = Ticket.where(["status = ? and extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ?", 'inprogress', @tahun, bulan]).count
        array_inprogress.push(
          'amount' => @inprogress
        )

        # created
        @created = Ticket.where(["status = ? and extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ?", 'created', @tahun, bulan]).count
        array_created.push(
          'amount' => @created
        )

        # closed
        @closed = Ticket.where(["status = ? and extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ?", 'closed', @tahun, bulan]).count
        array_closed.push(
          'amount' => @closed
        )

        # rejected
        @rejected = Ticket.where(["status = ? and extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ?", 'rejected', @tahun, bulan]).count
        array_rejected.push(
          'amount' => @rejected
        )
      end
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

  def teknisiGraph
    @tahun = params[:tahun]
    array_closed = []
    @filter = RoleAssignment.left_outer_joins(:user,:role).where('users.username = ? and roles.name = ?', current_user.username, 'manajer it')
    if @filter.count == 1
      @teknisis = RoleAssignment.left_outer_joins(:user,:role).where('roles.name = ?', 'teknisi').select('users.username').order(:id => :asc)

      @teknisis.each do |data|
        for a in 1..12 do
          if a <= 9
            bulan = "0"+a.to_s
          else
            bulan = a.to_s
          end
  
          @closed = Ticket.where("status = ? and extract(year from created_at AT TIME ZONE '+07') = ? and extract(month from created_at AT TIME ZONE '+07') = ? and assigned_by = ?", 'closed', @tahun, bulan, data.username).sum(:duration)
          array_closed.push(
            'teknisi' => data.username,
            'durasi' => @closed.round(2)
          )
        end
      end
  
      render json:{
        grafik_teknisi:{
          closed: array_closed
        }
      }
    end
  end
end