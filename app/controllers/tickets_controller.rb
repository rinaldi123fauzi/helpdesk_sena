class TicketsController < ApplicationController
  before_action :set_ticket, only: %i[ show edit update destroy ]

  # GET /tickets or /tickets.json
  def index
    if current_user.roles.any? {|r| r.name == "user"}
      @tickets = Ticket.where(issued_by: current_user.username).order(:id => :desc)
    elsif current_user.roles.any? {|r| r.name == "kepala divisi" || r.name == "projek manajer"}
      @tickets = Ticket.where(approval_by: current_user.username, status: 'created').order(:id => :desc)
    elsif current_user.roles.any? {|r| r.name == "manajer it"}
      @tickets = Ticket.where(approval_by: current_user.username, status: 'approval1').order(:id => :desc)
    else
      @tickets = Ticket.order(:id => :desc)
    end
  end
end
