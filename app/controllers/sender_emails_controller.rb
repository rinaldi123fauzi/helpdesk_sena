class SenderEmailsController < ApplicationController
  before_action :set_sender_email, only: %i[ show edit update destroy ]
  
  # GET /sender_emails or /sender_emails.json
  def index
    @sender_emails = SenderEmail.order(:id => :desc)
  end

  # GET /sender_emails/1 or /sender_emails/1.json
  def show
  end

  # GET /sender_emails/new
  def new
    @sender_email = SenderEmail.new
  end

  # GET /sender_emails/1/edit
  def edit
  end

  # POST /sender_emails or /sender_emails.json
  def create
    @sender_email = SenderEmail.new(sender_email_params)

    respond_to do |format|
      if @sender_email.save
        format.html { redirect_to sender_email_url(@sender_email), notice: "Sender email was successfully created." }
        format.json { render :show, status: :created, location: @sender_email }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sender_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sender_emails/1 or /sender_emails/1.json
  def update
    respond_to do |format|
      if @sender_email.update(sender_email_params)
        format.html { redirect_to sender_email_url(@sender_email), notice: "Sender email was successfully updated." }
        format.json { render :show, status: :ok, location: @sender_email }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sender_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sender_emails/1 or /sender_emails/1.json
  def destroy
    @sender_email.destroy

    respond_to do |format|
      format.html { redirect_to sender_emails_url, notice: "Sender email was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sender_email
      @sender_email = SenderEmail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sender_email_params
      params.require(:sender_email).permit(:email_to, :parent_id, :token, :status)
    end
end
