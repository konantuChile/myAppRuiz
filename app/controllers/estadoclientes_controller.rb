class EstadoclientesController < ApplicationController
  before_action :set_estadocliente, only: [:show, :edit, :update, :destroy]

  # GET /estadoclientes
  # GET /estadoclientes.json
  def index
    @estadoclientes = Estadocliente.all
  end

  # GET /estadoclientes/1
  # GET /estadoclientes/1.json
  def show
  end

  # GET /estadoclientes/new
  def new
    @estadocliente = Estadocliente.new
  end

  # GET /estadoclientes/1/edit
  def edit
  end

  # POST /estadoclientes
  # POST /estadoclientes.json
  def create
    @estadocliente = Estadocliente.new(estadocliente_params)

    respond_to do |format|
      if @estadocliente.save
        format.html { redirect_to @estadocliente, notice: 'Estadocliente was successfully created.' }
        format.json { render :show, status: :created, location: @estadocliente }
      else
        format.html { render :new }
        format.json { render json: @estadocliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estadoclientes/1
  # PATCH/PUT /estadoclientes/1.json
  def update
    respond_to do |format|
      if @estadocliente.update(estadocliente_params)
        format.html { redirect_to @estadocliente, notice: 'Estadocliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @estadocliente }
      else
        format.html { render :edit }
        format.json { render json: @estadocliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estadoclientes/1
  # DELETE /estadoclientes/1.json
  def destroy
    @estadocliente.destroy
    respond_to do |format|
      format.html { redirect_to estadoclientes_url, notice: 'Estadocliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estadocliente
      @estadocliente = Estadocliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estadocliente_params
      params.require(:estadocliente).permit(:nombreestadocliente, :fechaingresoestadoclie)
    end
end
