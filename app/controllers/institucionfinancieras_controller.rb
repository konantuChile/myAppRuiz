class InstitucionfinancierasController < ApplicationController
  before_action :set_institucionfinanciera, only: [:show, :edit, :update, :destroy]

  # GET /institucionfinancieras
  # GET /institucionfinancieras.json
  def index
    @institucionfinancieras = Institucionfinanciera.all
  end

  # GET /institucionfinancieras/1
  # GET /institucionfinancieras/1.json
  def show
  end

  # GET /institucionfinancieras/new
  def new
    @institucionfinanciera = Institucionfinanciera.new
  end

  # GET /institucionfinancieras/1/edit
  def edit
  end

  # POST /institucionfinancieras
  # POST /institucionfinancieras.json
  def create
    @institucionfinanciera = Institucionfinanciera.new(institucionfinanciera_params)

    respond_to do |format|
      if @institucionfinanciera.save
        format.html { redirect_to @institucionfinanciera, notice: 'Institucionfinanciera was successfully created.' }
        format.json { render :show, status: :created, location: @institucionfinanciera }
      else
        format.html { render :new }
        format.json { render json: @institucionfinanciera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /institucionfinancieras/1
  # PATCH/PUT /institucionfinancieras/1.json
  def update
    respond_to do |format|
      if @institucionfinanciera.update(institucionfinanciera_params)
        format.html { redirect_to @institucionfinanciera, notice: 'Institucionfinanciera was successfully updated.' }
        format.json { render :show, status: :ok, location: @institucionfinanciera }
      else
        format.html { render :edit }
        format.json { render json: @institucionfinanciera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /institucionfinancieras/1
  # DELETE /institucionfinancieras/1.json
  def destroy
    @institucionfinanciera.destroy
    respond_to do |format|
      format.html { redirect_to institucionfinancieras_url, notice: 'Institucionfinanciera was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institucionfinanciera
      @institucionfinanciera = Institucionfinanciera.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def institucionfinanciera_params
      params.require(:institucionfinanciera).permit(:foliocertificadoriesgo, :nombreinstitucionfinanciera, :direccioninstitucionfinanciera, :emailinstitucionfinanciera, :contactoinstitucionfinanciera, :fechaingresoinstfinanciera)
    end
end
