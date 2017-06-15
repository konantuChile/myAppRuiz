class SolicitudinformesController < ApplicationController
  before_action :set_solicitudinforme, only: [:show, :edit, :update, :destroy]

  # GET /solicitudinformes
  # GET /solicitudinformes.json
  def index
    @solicitudinformes = Solicitudinforme.all
  end

  # GET /solicitudinformes/1
  # GET /solicitudinformes/1.json
  def show
  end

  # GET /solicitudinformes/new
  def new
    @solicitudinforme = Solicitudinforme.new
  end

  # GET /solicitudinformes/1/edit
  def edit
  end

  # POST /solicitudinformes
  # POST /solicitudinformes.json
  def create
    @solicitudinforme = Solicitudinforme.new(solicitudinforme_params)

    respond_to do |format|
      if @solicitudinforme.save
        format.html { redirect_to @solicitudinforme, notice: 'Solicitudinforme was successfully created.' }
        format.json { render :show, status: :created, location: @solicitudinforme }
      else
        format.html { render :new }
        format.json { render json: @solicitudinforme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicitudinformes/1
  # PATCH/PUT /solicitudinformes/1.json
  def update
    respond_to do |format|
      if @solicitudinforme.update(solicitudinforme_params)
        format.html { redirect_to @solicitudinforme, notice: 'Solicitudinforme was successfully updated.' }
        format.json { render :show, status: :ok, location: @solicitudinforme }
      else
        format.html { render :edit }
        format.json { render json: @solicitudinforme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitudinformes/1
  # DELETE /solicitudinformes/1.json
  def destroy
    @solicitudinforme.destroy
    respond_to do |format|
      format.html { redirect_to solicitudinformes_url, notice: 'Solicitudinforme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitudinforme
      @solicitudinforme = Solicitudinforme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solicitudinforme_params
      params.require(:solicitudinforme).permit(:idtipomoneda, :idanalista, :idejecutivo, :idestadoproceso, :fechahoraingreso, :montosolicitado)
    end
end
