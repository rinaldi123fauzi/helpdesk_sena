class HomeController < ApplicationController
  def index
    if current_user.roles.any? {|r| r.name == "user"}
      @status_created = Ticket.where(status: 'created', issued_by: current_user.username).count
      @status_assigned = Ticket.where(status: 'assigned', issued_by: current_user.username).count
      @status_overdue = Ticket.where(status: 'overdue', issued_by: current_user.username).count
      @status_closed = Ticket.where(status: 'closed', issued_by: current_user.username).count
      @all = Ticket.where(issued_by: current_user.username).count
    else
      @status_created = Ticket.where(status: 'created').count
      @status_assigned = Ticket.where(status: 'assigned').count
      @status_overdue = Ticket.where(status: 'overdue').count
      @status_closed = Ticket.where(status: 'closed').count
      @all = Ticket.count
    end
  end
end
