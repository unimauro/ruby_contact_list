class CreditCardNetworksController < ApplicationController
  before_action :set_credit_card_network, only: %i[ show edit update destroy ]

  # GET /credit_card_networks or /credit_card_networks.json
  def index
    @credit_card_networks = CreditCardNetwork.all
  end

  # GET /credit_card_networks/1 or /credit_card_networks/1.json
  def show
  end

  # GET /credit_card_networks/new
  def new
    @credit_card_network = CreditCardNetwork.new
  end

  # GET /credit_card_networks/1/edit
  def edit
  end

  # POST /credit_card_networks or /credit_card_networks.json
  def create
    @credit_card_network = CreditCardNetwork.new(credit_card_network_params)

    respond_to do |format|
      if @credit_card_network.save
        format.html { redirect_to credit_card_network_url(@credit_card_network), notice: "Credit card network was successfully created." }
        format.json { render :show, status: :created, location: @credit_card_network }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @credit_card_network.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /credit_card_networks/1 or /credit_card_networks/1.json
  def update
    respond_to do |format|
      if @credit_card_network.update(credit_card_network_params)
        format.html { redirect_to credit_card_network_url(@credit_card_network), notice: "Credit card network was successfully updated." }
        format.json { render :show, status: :ok, location: @credit_card_network }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @credit_card_network.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /credit_card_networks/1 or /credit_card_networks/1.json
  def destroy
    @credit_card_network.destroy

    respond_to do |format|
      format.html { redirect_to credit_card_networks_url, notice: "Credit card network was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_credit_card_network
      @credit_card_network = CreditCardNetwork.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def credit_card_network_params
      params.require(:credit_card_network).permit(:name)
    end
end
