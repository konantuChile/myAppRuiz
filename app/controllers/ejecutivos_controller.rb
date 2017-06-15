class EjecutivosController < ApplicationController
  before_action :set_ejecutivo, only: [:show, :edit, :update, :destroy]

  # GET /ejecutivos
  # GET /ejecutivos.json
  def index
    @ejecutivos = Ejecutivo.all
  end

  # GET /ejecutivos/1
  # GET /ejecutivos/1.json
  def show
  end

  # GET /ejecutivos/new
  def new
    @ejecutivo = Ejecutivo.new
  end

  # GET /ejecutivos/1/edit
  def edit
  end

  # POST /ejecutivos
  # POST /ejecutivos.json
  def create
    @ejecutivo = Ejecutivo.new(ejecutivo_params)

    respond_to do |format|
      if @ejecutivo.save
        format.html { redirect_to @ejecutivo, notice: 'Ejecutivo was successfully created.' }
        format.json { render :show, status: :created, location: @ejecutivo }
      else
        format.html { render :new }
        format.json { render json: @ejecutivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ejecutivos/1
  # PATCH/PUT /ejecutivos/1.json
  def update
    respond_to do |format|
      if @ejecutivo.update(ejecutivo_params)
        format.html { redirect_to @ejecutivo, notice: 'Ejecutivo was successfully updated.' }
        format.json { render :show, status: :ok, location: @ejecutivo }
      else
        format.html { render :edit }
        format.json { render json: @ejecutivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ejecutivos/1
  # DELETE /ejecutivos/1.json
  def destroy
    @ejecutivo.destroy
    respond_to do |format|
      format.html { redirect_to ejecutivos_url, notice: 'Ejecutivo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ejecutivo
      @ejecutivo = Ejecutivo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ejecutivo_params
      params.require(:ejecutivo).permit(:idcliente, :idempleado, :cantidadmaxclientes, :fechaingresoejecutivo)
    end
end
