class AvalesencertificadoriesgosController < ApplicationController
  before_action :set_avalesencertificadoriesgo, only: [:show, :edit, :update, :destroy]

  # GET /avalesencertificadoriesgos
  # GET /avalesencertificadoriesgos.json
  def index
    @avalesencertificadoriesgos = Avalesencertificadoriesgo.all
  end

  # GET /avalesencertificadoriesgos/1
  # GET /avalesencertificadoriesgos/1.json
  def show
  end

  # GET /avalesencertificadoriesgos/new
  def new
    @avalesencertificadoriesgo = Avalesencertificadoriesgo.new
  end

  # GET /avalesencertificadoriesgos/1/edit
  def edit
  end

  # POST /avalesencertificadoriesgos
  # POST /avalesencertificadoriesgos.json
  def create
    @avalesencertificadoriesgo = Avalesencertificadoriesgo.new(avalesencertificadoriesgo_params)

    respond_to do |format|
      if @avalesencertificadoriesgo.save
        format.html { redirect_to @avalesencertificadoriesgo, notice: 'Avalesencertificadoriesgo was successfully created.' }
        format.json { render :show, status: :created, location: @avalesencertificadoriesgo }
      else
        format.html { render :new }
        format.json { render json: @avalesencertificadoriesgo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avalesencertificadoriesgos/1
  # PATCH/PUT /avalesencertificadoriesgos/1.json
  def update
    respond_to do |format|
      if @avalesencertificadoriesgo.update(avalesencertificadoriesgo_params)
        format.html { redirect_to @avalesencertificadoriesgo, notice: 'Avalesencertificadoriesgo was successfully updated.' }
        format.json { render :show, status: :ok, location: @avalesencertificadoriesgo }
      else
        format.html { render :edit }
        format.json { render json: @avalesencertificadoriesgo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avalesencertificadoriesgos/1
  # DELETE /avalesencertificadoriesgos/1.json
  def destroy
    @avalesencertificadoriesgo.destroy
    respond_to do |format|
      format.html { redirect_to avalesencertificadoriesgos_url, notice: 'Avalesencertificadoriesgo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avalesencertificadoriesgo
      @avalesencertificadoriesgo = Avalesencertificadoriesgo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def avalesencertificadoriesgo_params
      params.require(:avalesencertificadoriesgo).permit(:idaval, :fechahoraingreso)
    end
end
