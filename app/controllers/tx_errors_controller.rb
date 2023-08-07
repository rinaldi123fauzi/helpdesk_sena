class TxErrorsController < ApplicationController
  before_action :set_tx_error, only: %i[ show edit update destroy ]

  # GET /tx_errors or /tx_errors.json
  def index
    @tx_errors = TxError.order(:created_at => :desc)
  end

  # GET /tx_errors/1 or /tx_errors/1.json
  def show
  end

  # GET /tx_errors/new
  def new
    @tx_error = TxError.new
  end

  # GET /tx_errors/1/edit
  def edit
  end

  # POST /tx_errors or /tx_errors.json
  def create
    @tx_error = TxError.new(tx_error_params)

    respond_to do |format|
      if @tx_error.save
        format.html { redirect_to tx_error_url(@tx_error), notice: "Tx error was successfully created." }
        format.json { render :show, status: :created, location: @tx_error }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tx_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tx_errors/1 or /tx_errors/1.json
  def update
    respond_to do |format|
      if @tx_error.update(tx_error_params)
        format.html { redirect_to tx_error_url(@tx_error), notice: "Tx error was successfully updated." }
        format.json { render :show, status: :ok, location: @tx_error }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tx_error.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tx_errors/1 or /tx_errors/1.json
  def destroy
    @tx_error.destroy

    respond_to do |format|
      format.html { redirect_to tx_errors_url, notice: "Tx error was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tx_error
      @tx_error = TxError.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tx_error_params
      params.require(:tx_error).permit(:description)
    end
end
