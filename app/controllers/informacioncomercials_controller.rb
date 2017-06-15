class InformacioncomercialsController < ApplicationController
  before_action :set_informacioncomercial, only: [:show, :edit, :update, :destroy]

  # GET /informacioncomercials
  # GET /informacioncomercials.json
  def index
    @informacioncomercials = Informacioncomercial.all
  end

  # GET /informacioncomercials/1
  # GET /informacioncomercials/1.json
  def show
  end

  # GET /informacioncomercials/new
  def new
    @informacioncomercial = Informacioncomercial.new
  end

  # GET /informacioncomercials/1/edit
  def edit
  end

  # POST /informacioncomercials
  # POST /informacioncomercials.json
  def create
    @informacioncomercial = Informacioncomercial.new(informacioncomercial_params)

    respond_to do |format|
      if @informacioncomercial.save
        format.html { redirect_to @informacioncomercial, notice: 'Informacioncomercial was successfully created.' }
        format.json { render :show, status: :created, location: @informacioncomercial }
      else
        format.html { render :new }
        format.json { render json: @informacioncomercial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /informacioncomercials/1
  # PATCH/PUT /informacioncomercials/1.json
  def update
    respond_to do |format|
      if @informacioncomercial.update(informacioncomercial_params)
        format.html { redirect_to @informacioncomercial, notice: 'Informacioncomercial was successfully updated.' }
        format.json { render :show, status: :ok, location: @informacioncomercial }
      else
        format.html { render :edit }
        format.json { render json: @informacioncomercial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /informacioncomercials/1
  # DELETE /informacioncomercials/1.json
  def destroy
    @informacioncomercial.destroy
    respond_to do |format|
      format.html { redirect_to informacioncomercials_url, notice: 'Informacioncomercial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_informacioncomercial
      @informacioncomercial = Informacioncomercial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def informacioncomercial_params
      params.require(:informacioncomercial).permit(:idtipomoneda, :correlativoinformacion, :fechainforcomercial, :montoinforcomercial, :fechahoraingreso)
    end
end
