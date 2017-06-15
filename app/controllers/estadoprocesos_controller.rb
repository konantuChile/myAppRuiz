class EstadoprocesosController < ApplicationController
  before_action :set_estadoproceso, only: [:show, :edit, :update, :destroy]

  # GET /estadoprocesos
  # GET /estadoprocesos.json
  def index
    @estadoprocesos = Estadoproceso.all
  end

  # GET /estadoprocesos/1
  # GET /estadoprocesos/1.json
  def show
  end

  # GET /estadoprocesos/new
  def new
    @estadoproceso = Estadoproceso.new
  end

  # GET /estadoprocesos/1/edit
  def edit
  end

  # POST /estadoprocesos
  # POST /estadoprocesos.json
  def create
    @estadoproceso = Estadoproceso.new(estadoproceso_params)

    respond_to do |format|
      if @estadoproceso.save
        format.html { redirect_to @estadoproceso, notice: 'Estadoproceso was successfully created.' }
        format.json { render :show, status: :created, location: @estadoproceso }
      else
        format.html { render :new }
        format.json { render json: @estadoproceso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estadoprocesos/1
  # PATCH/PUT /estadoprocesos/1.json
  def update
    respond_to do |format|
      if @estadoproceso.update(estadoproceso_params)
        format.html { redirect_to @estadoproceso, notice: 'Estadoproceso was successfully updated.' }
        format.json { render :show, status: :ok, location: @estadoproceso }
      else
        format.html { render :edit }
        format.json { render json: @estadoproceso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estadoprocesos/1
  # DELETE /estadoprocesos/1.json
  def destroy
    @estadoproceso.destroy
    respond_to do |format|
      format.html { redirect_to estadoprocesos_url, notice: 'Estadoproceso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estadoproceso
      @estadoproceso = Estadoproceso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estadoproceso_params
      params.require(:estadoproceso).permit(:nombreestadoproceso, :fechaingresoestado)
    end
end
