class ImportStatusesController < ApplicationController
  before_action :set_import_status, only: %i[ show edit update destroy ]

  # GET /import_statuses or /import_statuses.json
  def index
    @import_statuses = ImportStatus.all
  end

  # GET /import_statuses/1 or /import_statuses/1.json
  def show
  end

  # GET /import_statuses/new
  def new
    @import_status = ImportStatus.new
  end

  # GET /import_statuses/1/edit
  def edit
  end

  # POST /import_statuses or /import_statuses.json
  def create
    @import_status = ImportStatus.new(import_status_params)

    respond_to do |format|
      if @import_status.save
        format.html { redirect_to import_status_url(@import_status), notice: "Import status was successfully created." }
        format.json { render :show, status: :created, location: @import_status }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @import_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /import_statuses/1 or /import_statuses/1.json
  def update
    respond_to do |format|
      if @import_status.update(import_status_params)
        format.html { redirect_to import_status_url(@import_status), notice: "Import status was successfully updated." }
        format.json { render :show, status: :ok, location: @import_status }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @import_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /import_statuses/1 or /import_statuses/1.json
  def destroy
    @import_status.destroy

    respond_to do |format|
      format.html { redirect_to import_statuses_url, notice: "Import status was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_import_status
      @import_status = ImportStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def import_status_params
      params.require(:import_status).permit(:name)
    end
end
