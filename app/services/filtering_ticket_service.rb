class FilteringTicketService  < ApplicationService
  attr_accessor :no_ticket, :username, :kategori, :flash

  def initialize(no_ticket, username, kategori, flash)
    @no_ticket = no_ticket
    @username = username
    @kategori = kategori
    @flash = flash
  end

  def call
    case @kategori
    when 'filter-by-user'
      if @no_ticket.present?
        if @no_ticket.length >= 6
          @tickets = Ticket.where(['no_ticket LIKE ?', "#{@no_ticket}%"]).where('issued_by = :value or approval_by = :value', :value => @username).limit(100).user_ordering
        else
          @tickets = Ticket.where('issued_by = :value or approval_by = :value', :value => @username).limit(10).user_ordering  
          @flash[:alert] = "Minimal pencarian 6 karakter"
        end
      else
        @tickets = Ticket.where('issued_by = :value or approval_by = :value', :value => @username).limit(10).user_ordering
      end
    when 'filter-by-manajerit'
      if @no_ticket.present?
        if @no_ticket.length >= 6
          @tickets = Ticket.where(['no_ticket LIKE ?', "#{@no_ticket}%"]).where('(status IN (?) and approval_by = ?) or issued_by = ?', ['created','approval3'], @username, @username).limit(100).urgency_ordering
        else
          @tickets = Ticket.where('(status IN (?) and approval_by = ?) or issued_by = ?', ['created','approval3'], @username, @username).limit(10).urgency_ordering
          @flash[:alert] = "Minimal pencarian 6 karakter"
        end
      else
        @tickets = Ticket.where('(status IN (?) and approval_by = ?) or issued_by = ?', ['created','approval3'], @username, @username).limit(10).urgency_ordering
      end
    when 'filter-by-teknisi'
      if @no_ticket.present?
        if @no_ticket.length >= 6
          @tickets = Ticket.left_outer_joins(:sub_category).where(['tickets.no_ticket LIKE ?', "#{@no_ticket}%"]).where('tickets.issued_by = ? or (tickets.assigned_by = ? and tickets.status IN (?)) or (tickets.assigned_by IS ? and tickets.status = ?)', @username, @username, ['inprogress','open','overdue'], nil, 'open').limit(100).urgency_ordering
        else
          @tickets = Ticket.left_outer_joins(:sub_category).where('tickets.issued_by = ? or (tickets.assigned_by = ? and tickets.status IN (?)) or (tickets.assigned_by IS ? and tickets.status = ?)', @username, @username, ['inprogress','open','overdue'], nil, 'open').limit(10).urgency_ordering
          @flash[:alert] = "Minimal pencarian 6 karakter"
        end
      else
        @tickets = Ticket.left_outer_joins(:sub_category).where('tickets.issued_by = ? or (tickets.assigned_by = ? and tickets.status IN (?)) or (tickets.assigned_by IS ? and tickets.status = ?)', @username, @username, ['inprogress','open','overdue'], nil, 'open').limit(10).urgency_ordering
      end
    when 'filter-by-kadiv'
      if @no_ticket.present?
        if @no_ticket.length >= 6
          @tickets = Ticket.where(['no_ticket LIKE ?', "#{@no_ticket}%"]).where('issued_by = :value or approval_by = :value', :value => @username).limit(100).urgency_ordering
        else
          @tickets = Ticket.where('issued_by = :value or approval_by = :value', :value => @username).limit(10).urgency_ordering
          @flash[:alert] = "Minimal pencarian 6 karakter"
        end
      else
        @tickets = Ticket.where('issued_by = :value or approval_by = :value', :value => @username).limit(10).urgency_ordering
      end
    else
      if @no_ticket.present?
        if @no_ticket.length >= 6
          @tickets = Ticket.where(['no_ticket LIKE ?', "#{@no_ticket}%"]).limit(100).urgency_ordering
        else
          @tickets = Ticket.limit(10).urgency_ordering
          @flash[:alert] = "Minimal pencarian 6 karakter"
        end
      else
        @tickets = Ticket.limit(10).urgency_ordering
      end
    end
    return @tickets
  end
end