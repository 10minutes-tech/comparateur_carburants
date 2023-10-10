class StationsController < ApplicationController
  before_action :set_station, only: %i[ show edit update destroy ]

  # GET /stations or /stations.json
  def index
    @stations = Station.all
  end

  # GET /stations/1 or /stations/1.json
  def show
  end

  # GET /stations/new
  def new
    @station = Station.new
  end

  # GET /stations/1/edit
  def edit
  end

  # POST /stations or /stations.json
  def create
    @station = Station.new(station_params)

    respond_to do |format|
      if @station.save
        format.html { redirect_to station_url(@station), notice: "Station was successfully created." }
        format.json { render :show, status: :created, location: @station }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stations/1 or /stations/1.json
  def update
    respond_to do |format|
      if @station.update(station_params)
        format.html { redirect_to station_url(@station), notice: "Station was successfully updated." }
        format.json { render :show, status: :ok, location: @station }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stations/1 or /stations/1.json
  def destroy
    @station.destroy!

    respond_to do |format|
      format.html { redirect_to stations_url, notice: "Station was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_station
      @station = Station.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def station_params
      params.require(:station).permit(:id_station, :latitude, :longitude, :cp, :pop, :adresse, :ville, :services, :prix, :horaires, :geom, :gazole_maj, :gazole_prix, :sp95_maj, :sp95_prix, :e85_maj, :e85_prix, :gplc_maj, :gplc_prix, :e10_maj, :e10_prix, :sp98_maj, :sp98_prix, :carburants_disponibles, :carburants_indisponibles, :horaires_automate_24_24, :services_service, :departement, :code_departement, :region, :code_region)
    end
end
