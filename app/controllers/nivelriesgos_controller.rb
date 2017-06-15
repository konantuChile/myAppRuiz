class NivelriesgosController < ApplicationController
  before_action :set_nivelriesgo, only: [:show, :edit, :update, :destroy]

  # GET /nivelriesgos
  # GET /nivelriesgos.json
  def index
    @nivelriesgos = Nivelriesgo.all
  end

  # GET /nivelriesgos/1
  # GET /nivelriesgos/1.json
  def show
  end

  # GET /nivelriesgos/new
  def new
    @nivelriesgo = Nivelriesgo.new
  end

  # GET /nivelriesgos/1/edit
  def edit
  end

  # POST /nivelriesgos
  # POST /nivelriesgos.json
  def create
    @nivelriesgo = Nivelriesgo.new(nivelriesgo_params)

    respond_to do |format|
      if @nivelriesgo.save
        format.html { redirect_to @nivelriesgo, notice: 'Nivelriesgo was successfully created.' }
        format.json { render :show, status: :created, location: @nivelriesgo }
      else
        format.html { render :new }
        format.json { render json: @nivelriesgo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nivelriesgos/1
  # PATCH/PUT /nivelriesgos/1.json
  def update
    respond_to do |format|
      if @nivelriesgo.update(nivelriesgo_params)
        format.html { redirect_to @nivelriesgo, notice: 'Nivelriesgo was successfully updated.' }
        format.json { render :show, status: :ok, location: @nivelriesgo }
      else
        format.html { render :edit }
        format.json { render json: @nivelriesgo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nivelriesgos/1
  # DELETE /nivelriesgos/1.json
  def destroy
    @nivelriesgo.destroy
    respond_to do |format|
      format.html { redirect_to nivelriesgos_url, notice: 'Nivelriesgo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nivelriesgo
      @nivelriesgo = Nivelriesgo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nivelriesgo_params
      params.require(:nivelriesgo).permit(:nombrenivelriesgo, :fechaingresonivriesgo)
    end
end
