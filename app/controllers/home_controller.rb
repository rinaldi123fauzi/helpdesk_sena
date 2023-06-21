class HomeController < ApplicationController
  def index
    if current_user.roles.any? {|r| r.name == "user"}
      @status_created = Ticket.where(status: 'created', issued_by: current_user.username).count
      @status_open = Ticket.where(status: 'open', issued_by: current_user.username).count
      @status_approval = Ticket.where('status IN (?) and issued_by = ?', ['approval1','approval2'], current_user.username).count
      @status_inprogress = Ticket.where(status: 'inprogress', issued_by: current_user.username).count
      @status_overdue = Ticket.where(status: 'overdue', issued_by: current_user.username).count
      @status_closed = Ticket.where(status: 'closed', issued_by: current_user.username).count
      @status_rejected = Ticket.where(status: 'rejected', issued_by: current_user.username).count
      @all = Ticket.where(issued_by: current_user.username).count
    else
      @status_created = Ticket.where(status: 'created').count
      @status_open = Ticket.where(status: 'open').count
      @status_approval = Ticket.where('status IN (?)', ['approval1','approval2']).count
      @status_inprogress = Ticket.where(status: 'inprogress').count
      @status_overdue = Ticket.where(status: 'overdue').count
      @status_closed = Ticket.where(status: 'closed').count
      @status_rejected = Ticket.where(status: 'rejected').count
      @all = Ticket.count
    end
  end
end
