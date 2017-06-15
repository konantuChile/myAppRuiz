class EstudioriesgosController < ApplicationController
  before_action :set_estudioriesgo, only: [:show, :edit, :update, :destroy]

  # GET /estudioriesgos
  # GET /estudioriesgos.json
  def index
    @estudioriesgos = Estudioriesgo.all
  end

  # GET /estudioriesgos/1
  # GET /estudioriesgos/1.json
  def show
  end

  # GET /estudioriesgos/new
  def new
    @estudioriesgo = Estudioriesgo.new
  end

  # GET /estudioriesgos/1/edit
  def edit
  end

  # POST /estudioriesgos
  # POST /estudioriesgos.json
  def create
    @estudioriesgo = Estudioriesgo.new(estudioriesgo_params)

    respond_to do |format|
      if @estudioriesgo.save
        format.html { redirect_to @estudioriesgo, notice: 'Estudioriesgo was successfully created.' }
        format.json { render :show, status: :created, location: @estudioriesgo }
      else
        format.html { render :new }
        format.json { render json: @estudioriesgo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estudioriesgos/1
  # PATCH/PUT /estudioriesgos/1.json
  def update
    respond_to do |format|
      if @estudioriesgo.update(estudioriesgo_params)
        format.html { redirect_to @estudioriesgo, notice: 'Estudioriesgo was successfully updated.' }
        format.json { render :show, status: :ok, location: @estudioriesgo }
      else
        format.html { render :edit }
        format.json { render json: @estudioriesgo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estudioriesgos/1
  # DELETE /estudioriesgos/1.json
  def destroy
    @estudioriesgo.destroy
    respond_to do |format|
      format.html { redirect_to estudioriesgos_url, notice: 'Estudioriesgo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estudioriesgo
      @estudioriesgo = Estudioriesgo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estudioriesgo_params
      params.require(:estudioriesgo).permit(:idestadoproceso, :idanalista, :fechainicioestudioriesgo, :fechaterminoestudioriesgo, :observacionestudio)
    end
end
