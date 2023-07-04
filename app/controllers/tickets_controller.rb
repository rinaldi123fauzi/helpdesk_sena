class TicketsController < ApplicationController
  before_action :set_ticket, only: %i[ show edit update destroy ]

  # GET /tickets or /tickets.json
  def index
    if current_user.roles.any? {|r| r.name == "user"}
      @tickets = Ticket.where('issued_by = :value or approval_by = :value', :value => current_user.username).user_ordering
    elsif current_user.roles.any? {|r| r.name == "manajer it"}
      @tickets = Ticket.urgency_ordering
    elsif current_user.roles.any? {|r| r.name == "teknisi"}
      @tickets = Ticket.left_outer_joins(:sub_category).where('(tickets.assigned_by = ? and tickets.status IN (?)) or (tickets.assigned_by IS ? and tickets.status = ?)', current_user.username, ['inprogress','open','overdue'], nil, 'open').teknisi_ordering
    elsif current_user.roles.any? {|r| r.name == "kepala divisi"}
      @tickets = Ticket.where('issued_by = :value or approval_by = :value', :value => current_user.username).urgency_ordering
    else
      @tickets = Ticket.urgency_ordering
    end
  end
end
