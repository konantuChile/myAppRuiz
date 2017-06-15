class AnalistaController < ApplicationController
  before_action :set_analistum, only: [:show, :edit, :update, :destroy]

  # GET /analista
  # GET /analista.json
  def index
    @analista = Analistum.all
  end

  # GET /analista/1
  # GET /analista/1.json
  def show
  end

  # GET /analista/new
  def new
    @analistum = Analistum.new
  end

  # GET /analista/1/edit
  def edit
  end

  # POST /analista
  # POST /analista.json
  def create
    @analistum = Analistum.new(analistum_params)

    respond_to do |format|
      if @analistum.save
        format.html { redirect_to @analistum, notice: 'Analistum was successfully created.' }
        format.json { render :show, status: :created, location: @analistum }
      else
        format.html { render :new }
        format.json { render json: @analistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /analista/1
  # PATCH/PUT /analista/1.json
  def update
    respond_to do |format|
      if @analistum.update(analistum_params)
        format.html { redirect_to @analistum, notice: 'Analistum was successfully updated.' }
        format.json { render :show, status: :ok, location: @analistum }
      else
        format.html { render :edit }
        format.json { render json: @analistum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analista/1
  # DELETE /analista/1.json
  def destroy
    @analistum.destroy
    respond_to do |format|
      format.html { redirect_to analista_url, notice: 'Analistum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analistum
      @analistum = Analistum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def analistum_params
      params.require(:analistum).permit(:idempleado, :idencargado, :cantidadmaxanalisis, :fechaingresoanalista)
    end
end
