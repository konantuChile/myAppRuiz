class CertificadoriesgosController < ApplicationController
  before_action :set_certificadoriesgo, only: [:show, :edit, :update, :destroy]

  # GET /certificadoriesgos
  # GET /certificadoriesgos.json
  def index
    @certificadoriesgos = Certificadoriesgo.all
  end

  # GET /certificadoriesgos/1
  # GET /certificadoriesgos/1.json
  def show
  end

  # GET /certificadoriesgos/new
  def new
    @certificadoriesgo = Certificadoriesgo.new
  end

  # GET /certificadoriesgos/1/edit
  def edit
  end

  # POST /certificadoriesgos
  # POST /certificadoriesgos.json
  def create
    @certificadoriesgo = Certificadoriesgo.new(certificadoriesgo_params)

    respond_to do |format|
      if @certificadoriesgo.save
        format.html { redirect_to @certificadoriesgo, notice: 'Certificadoriesgo was successfully created.' }
        format.json { render :show, status: :created, location: @certificadoriesgo }
      else
        format.html { render :new }
        format.json { render json: @certificadoriesgo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /certificadoriesgos/1
  # PATCH/PUT /certificadoriesgos/1.json
  def update
    respond_to do |format|
      if @certificadoriesgo.update(certificadoriesgo_params)
        format.html { redirect_to @certificadoriesgo, notice: 'Certificadoriesgo was successfully updated.' }
        format.json { render :show, status: :ok, location: @certificadoriesgo }
      else
        format.html { render :edit }
        format.json { render json: @certificadoriesgo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certificadoriesgos/1
  # DELETE /certificadoriesgos/1.json
  def destroy
    @certificadoriesgo.destroy
    respond_to do |format|
      format.html { redirect_to certificadoriesgos_url, notice: 'Certificadoriesgo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certificadoriesgo
      @certificadoriesgo = Certificadoriesgo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def certificadoriesgo_params
      params.require(:certificadoriesgo).permit(:idcliente, :idtipomoneda, :idanalista, :idencargado, :fechacertificadoriesgo, :montoaprobado)
    end
end
