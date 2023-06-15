class TicketChatsController < ApplicationController
  before_action :set_ticket_chat, only: %i[ show edit update destroy ]

  # GET /ticket_chats or /ticket_chats.json
  def index
    @ticket_chats = TicketChat.all
  end

  # GET /ticket_chats/1 or /ticket_chats/1.json
  def show
  end

  # GET /ticket_chats/new
  def new
    @ticket_chat = TicketChat.new
  end

  # GET /ticket_chats/1/edit
  def edit
  end

  # POST /ticket_chats or /ticket_chats.json
  def create
    @ticket_chat = TicketChat.new(ticket_chat_params)

    respond_to do |format|
      if @ticket_chat.save
        format.html { redirect_to ticket_chat_url(@ticket_chat), notice: "Ticket chat was successfully created." }
        format.json { render :show, status: :created, location: @ticket_chat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ticket_chat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_chats/1 or /ticket_chats/1.json
  def update
    respond_to do |format|
      if @ticket_chat.update(ticket_chat_params)
        format.html { redirect_to ticket_chat_url(@ticket_chat), notice: "Ticket chat was successfully updated." }
        format.json { render :show, status: :ok, location: @ticket_chat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ticket_chat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_chats/1 or /ticket_chats/1.json
  def destroy
    @ticket_chat.destroy

    respond_to do |format|
      format.html { redirect_to ticket_chats_url, notice: "Ticket chat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_chat
      @ticket_chat = TicketChat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ticket_chat_params
      params.require(:ticket_chat).permit(:sender, :receiver, :description)
    end
end
