class TicketsController < ApplicationController
  before_action :set_ticket, only: %i[ show edit update destroy ]

  # GET /tickets or /tickets.json
  def index
    if current_user.roles.any? {|r| r.name == "user"}
      @tickets = Ticket.where('issued_by = :value or approval_by = :value', :value => current_user.username).order(:id => :desc)
    elsif current_user.roles.any? {|r| r.name == "manajer it"}
      @tickets = Ticket.left_outer_joins(:sub_category).where('approval_by = ? and tickets.status IN (?) and sub_categories.approval_berjenjang IN (?)', current_user.username, ['approval1','approval2'], ['low','medium']).order(:id => :desc)
    elsif current_user.roles.any? {|r| r.name == "teknisi"}
      @ticket = Ticket.left_outer_joins(:sub_category).where('assigned_by = ?', current_user.username)
      if @ticket.count == 1
        @tickets = Ticket.left_outer_joins(:sub_category).where('assigned_by = ? and tickets.status IN (?)', current_user.username, ['inprogress','open'])
      else
        @tickets = Ticket.where(status: 'open')
      end
    elsif current_user.roles.any? {|r| r.name == "kepala divisi"}
      @tickets = Ticket.where('approval_by = :value', :value => current_user.username).order(:id => :desc)
    else
      @tickets = Ticket.order(:id => :desc)
    end
  end
end
