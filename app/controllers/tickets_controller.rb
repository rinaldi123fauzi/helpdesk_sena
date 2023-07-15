class TicketsController < ApplicationController
  before_action :set_ticket, only: %i[ show edit update destroy ]

  # GET /tickets or /tickets.json
  def index
    @no_ticket = params[:nomor_tiket]
    if current_user.roles.any? {|r| r.name == "user"}
      filterUser(@no_ticket)
    elsif current_user.roles.any? {|r| r.name == "manajer it"}
      filterManajerIt(@no_ticket)
    elsif current_user.roles.any? {|r| r.name == "teknisi"}
      filterTeknisi(@no_ticket)
    elsif current_user.roles.any? {|r| r.name == "kepala divisi"}
      filterKepalaDivisi(@no_ticket)
    else
      if @no_ticket.present?
        @tickets = Ticket.where(['no_ticket LIKE ?', "#{@no_ticket}%"]).urgency_ordering
      else
        @tickets = Ticket.limit(10).urgency_ordering
      end
    end
  end

  private

  def filterUser(no_ticket)
    if no_ticket.present?
      if no_ticket.length >= 6
        @tickets = Ticket.where(['no_ticket LIKE ?', "#{no_ticket}%"]).where('issued_by = :value or approval_by = :value', :value => current_user.username).user_ordering
      else
        @tickets = Ticket.where('issued_by = :value or approval_by = :value', :value => current_user.username).limit(10).user_ordering  
      end
    else
      @tickets = Ticket.where('issued_by = :value or approval_by = :value', :value => current_user.username).limit(10).user_ordering
    end
  end

  def filterManajerIt(no_ticket)
    if no_ticket.present?
      if no_ticket.length >= 6
        @tickets = Ticket.where(['no_ticket LIKE ?', "#{no_ticket}%"]).where('(status IN (?) and approval_by = ?) or issued_by = ?', ['created','approval3'], current_user.username, current_user.username).urgency_ordering
      else
        @tickets = Ticket.where('(status IN (?) and approval_by = ?) or issued_by = ?', ['created','approval3'], current_user.username, current_user.username).limit(10).urgency_ordering
      end
    else
      @tickets = Ticket.where('(status IN (?) and approval_by = ?) or issued_by = ?', ['created','approval3'], current_user.username, current_user.username).limit(10).urgency_ordering
    end
  end

  def filterTeknisi(no_ticket)
    if no_ticket.present?
      if no_ticket.length >= 6
        @tickets = Ticket.left_outer_joins(:sub_category).where(['tickets.no_ticket LIKE ?', "#{no_ticket}%"]).where('tickets.issued_by = ? or (tickets.assigned_by = ? and tickets.status IN (?)) or (tickets.assigned_by IS ? and tickets.status = ?)', current_user.username, current_user.username, ['inprogress','open','overdue'], nil, 'open').urgency_ordering
      else
        @tickets = Ticket.left_outer_joins(:sub_category).where('tickets.issued_by = ? or (tickets.assigned_by = ? and tickets.status IN (?)) or (tickets.assigned_by IS ? and tickets.status = ?)', current_user.username, current_user.username, ['inprogress','open','overdue'], nil, 'open').limit(10).urgency_ordering
      end
    else
      @tickets = Ticket.left_outer_joins(:sub_category).where('tickets.issued_by = ? or (tickets.assigned_by = ? and tickets.status IN (?)) or (tickets.assigned_by IS ? and tickets.status = ?)', current_user.username, current_user.username, ['inprogress','open','overdue'], nil, 'open').limit(10).urgency_ordering
    end
  end

  def filterKepalaDivisi(no_ticket)
    if no_ticket.present?
      if no_ticket.length >= 6
        @tickets = Ticket.where(['no_ticket LIKE ?', "#{no_ticket}%"]).where('issued_by = :value or approval_by = :value', :value => current_user.username).urgency_ordering
      else
        @tickets = Ticket.where('issued_by = :value or approval_by = :value', :value => current_user.username).limit(10).urgency_ordering
      end
    else
      @tickets = Ticket.where('issued_by = :value or approval_by = :value', :value => current_user.username).limit(10).urgency_ordering
    end
  end

end
