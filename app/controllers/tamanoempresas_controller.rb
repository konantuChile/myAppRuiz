class TamanoempresasController < ApplicationController
  before_action :set_tamanoempresa, only: [:show, :edit, :update, :destroy]

  # GET /tamanoempresas
  # GET /tamanoempresas.json
  def index
    @tamanoempresas = Tamanoempresa.all
  end

  # GET /tamanoempresas/1
  # GET /tamanoempresas/1.json
  def show
  end

  # GET /tamanoempresas/new
  def new
    @tamanoempresa = Tamanoempresa.new
  end

  # GET /tamanoempresas/1/edit
  def edit
  end

  # POST /tamanoempresas
  # POST /tamanoempresas.json
  def create
    @tamanoempresa = Tamanoempresa.new(tamanoempresa_params)

    respond_to do |format|
      if @tamanoempresa.save
        format.html { redirect_to @tamanoempresa, notice: 'Tamanoempresa was successfully created.' }
        format.json { render :show, status: :created, location: @tamanoempresa }
      else
        format.html { render :new }
        format.json { render json: @tamanoempresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tamanoempresas/1
  # PATCH/PUT /tamanoempresas/1.json
  def update
    respond_to do |format|
      if @tamanoempresa.update(tamanoempresa_params)
        format.html { redirect_to @tamanoempresa, notice: 'Tamanoempresa was successfully updated.' }
        format.json { render :show, status: :ok, location: @tamanoempresa }
      else
        format.html { render :edit }
        format.json { render json: @tamanoempresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tamanoempresas/1
  # DELETE /tamanoempresas/1.json
  def destroy
    @tamanoempresa.destroy
    respond_to do |format|
      format.html { redirect_to tamanoempresas_url, notice: 'Tamanoempresa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tamanoempresa
      @tamanoempresa = Tamanoempresa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tamanoempresa_params
      params.require(:tamanoempresa).permit(:tamanoempresa, :fechaingresotamnoemp)
    end
end
