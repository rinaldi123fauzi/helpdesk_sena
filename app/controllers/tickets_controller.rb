class TicketsController < ApplicationController
  before_action :set_ticket, only: %i[ show edit update destroy ]

  # GET /tickets or /tickets.json
  def index
    if current_user.roles.any? {|r| r.name == "user"}
      @tickets = Ticket.where('issued_by = :value or approval_by = :value', :value => current_user.username).order(:id => :desc)
    elsif current_user.roles.any? {|r| r.name == "manajer it"}
      @tickets = Ticket.left_outer_joins(:sub_category).where('approval_by = ? and tickets.status IN (?) and sub_categories.approval_berjenjang IN (?)', current_user.username, ['approval1','approval2'], ['low','medium']).order(:id => :desc)
    elsif current_user.roles.any? {|r| r.name == "teknisi"}
      @tickets = Ticket.left_outer_joins(:sub_category).where('(tickets.assigned_by = ? and tickets.status IN (?)) or (tickets.assigned_by IS ? and tickets.status = ?)', current_user.username, ['inprogress','open'], nil, 'open')
    elsif current_user.roles.any? {|r| r.name == "kepala divisi"}
      @tickets = Ticket.where('approval_by = :value', :value => current_user.username).order(:id => :desc)
    else
      @tickets = Ticket.order(:id => :desc)
    end
  end
end
