class TicketsController < ApplicationController
  before_action :set_ticket, only: %i[ show edit update destroy ]

  # GET /tickets or /tickets.json
  def index
    @kadiv_engineering = Position.where(user_id: current_user.id).first

    if current_user.roles.any? {|r| r.name == "user"}
      @tickets = Ticket.where(issued_by: current_user.username).order(:id => :desc)
    elsif current_user.roles.any? {|r| r.name == "kepala divisi" || r.name == "projek manajer"}
      if @kadiv_engineering.work_unit.nama == "Engineering"
        @tickets = Ticket.left_outer_joins(:sub_category).where('approval_by = ? and tickets.status = ? and sub_categories.approval_berjenjang = ?', current_user.username, 'approval1', 'medium').order(:id => :desc)
      else
        @tickets = Ticket.where(approval_by: current_user.username, status: 'created').order(:id => :desc)
      end
    elsif current_user.roles.any? {|r| r.name == "manajer it"}
      @tickets = Ticket.left_outer_joins(:sub_category).where('approval_by = ? and tickets.status IN (?) and sub_categories.approval_berjenjang IN (?)', current_user.username, ['approval1','approval2'], ['low','medium']).order(:id => :desc)
    else
      @tickets = Ticket.order(:id => :desc)
    end
  end
end
