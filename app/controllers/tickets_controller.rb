class TicketsController < ApplicationController
  before_action :set_ticket, only: %i[ show edit update destroy ]
  before_action { flash.clear }

  # GET /tickets or /tickets.json
  def index
    @no_ticket = params[:nomor_tiket]
    if current_user.roles.any? {|r| r.name == "user"}
      @tickets = FilteringTicketService.call(@no_ticket,current_user.username,'filter-by-user',flash)
    elsif current_user.roles.any? {|r| r.name == "manajer it"}
      @tickets = FilteringTicketService.call(@no_ticket,current_user.username,'filter-by-manajerit',flash)
    elsif current_user.roles.any? {|r| r.name == "teknisi"}
      @tickets = FilteringTicketService.call(@no_ticket,current_user.username,'filter-by-teknisi',flash)
    elsif current_user.roles.any? {|r| r.name == "kepala divisi"}
      @tickets = FilteringTicketService.call(@no_ticket,current_user.username,'filter-by-kadiv',flash)
    else
      @tickets = FilteringTicketService.call(@no_ticket,current_user.username,'',flash)
    end
    @checkRole = RoleAssignment.left_outer_joins(:user,:role).where('users.username = ? and roles.name IN (?)', current_user.username, ['teknisi'])
  end
end
