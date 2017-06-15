class TipomonedasController < ApplicationController
  before_action :set_tipomoneda, only: [:show, :edit, :update, :destroy]

  # GET /tipomonedas
  # GET /tipomonedas.json
  def index
    @tipomonedas = Tipomoneda.all
  end

  # GET /tipomonedas/1
  # GET /tipomonedas/1.json
  def show
  end

  # GET /tipomonedas/new
  def new
    @tipomoneda = Tipomoneda.new
  end

  # GET /tipomonedas/1/edit
  def edit
  end

  # POST /tipomonedas
  # POST /tipomonedas.json
  def create
    @tipomoneda = Tipomoneda.new(tipomoneda_params)

    respond_to do |format|
      if @tipomoneda.save
        format.html { redirect_to @tipomoneda, notice: 'Tipomoneda was successfully created.' }
        format.json { render :show, status: :created, location: @tipomoneda }
      else
        format.html { render :new }
        format.json { render json: @tipomoneda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipomonedas/1
  # PATCH/PUT /tipomonedas/1.json
  def update
    respond_to do |format|
      if @tipomoneda.update(tipomoneda_params)
        format.html { redirect_to @tipomoneda, notice: 'Tipomoneda was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipomoneda }
      else
        format.html { render :edit }
        format.json { render json: @tipomoneda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipomonedas/1
  # DELETE /tipomonedas/1.json
  def destroy
    @tipomoneda.destroy
    respond_to do |format|
      format.html { redirect_to tipomonedas_url, notice: 'Tipomoneda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipomoneda
      @tipomoneda = Tipomoneda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipomoneda_params
      params.require(:tipomoneda).permit(:nombretipomoneda, :fechaingresotipomo)
    end
end
