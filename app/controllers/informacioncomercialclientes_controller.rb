class InformacioncomercialclientesController < ApplicationController
  before_action :set_informacioncomercialcliente, only: [:show, :edit, :update, :destroy]

  # GET /informacioncomercialclientes
  # GET /informacioncomercialclientes.json
  def index
    @informacioncomercialclientes = Informacioncomercialcliente.all
  end

  # GET /informacioncomercialclientes/1
  # GET /informacioncomercialclientes/1.json
  def show
  end

  # GET /informacioncomercialclientes/new
  def new
    @informacioncomercialcliente = Informacioncomercialcliente.new
  end

  # GET /informacioncomercialclientes/1/edit
  def edit
  end

  # POST /informacioncomercialclientes
  # POST /informacioncomercialclientes.json
  def create
    @informacioncomercialcliente = Informacioncomercialcliente.new(informacioncomercialcliente_params)

    respond_to do |format|
      if @informacioncomercialcliente.save
        format.html { redirect_to @informacioncomercialcliente, notice: 'Informacioncomercialcliente was successfully created.' }
        format.json { render :show, status: :created, location: @informacioncomercialcliente }
      else
        format.html { render :new }
        format.json { render json: @informacioncomercialcliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /informacioncomercialclientes/1
  # PATCH/PUT /informacioncomercialclientes/1.json
  def update
    respond_to do |format|
      if @informacioncomercialcliente.update(informacioncomercialcliente_params)
        format.html { redirect_to @informacioncomercialcliente, notice: 'Informacioncomercialcliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @informacioncomercialcliente }
      else
        format.html { render :edit }
        format.json { render json: @informacioncomercialcliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /informacioncomercialclientes/1
  # DELETE /informacioncomercialclientes/1.json
  def destroy
    @informacioncomercialcliente.destroy
    respond_to do |format|
      format.html { redirect_to informacioncomercialclientes_url, notice: 'Informacioncomercialcliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_informacioncomercialcliente
      @informacioncomercialcliente = Informacioncomercialcliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def informacioncomercialcliente_params
      params.require(:informacioncomercialcliente).permit(:idcliente, :idestudioriesgo, :idnivelriesgo, :resultadoinforcomercial, :resultadoinforcontable, :fechafincompromisoinformacion, :fechaingresoinfcomercial)
    end
end
