class TipocuentaController < ApplicationController
  before_action :set_tipocuentum, only: [:show, :edit, :update, :destroy]

  # GET /tipocuenta
  # GET /tipocuenta.json
  def index
    @tipocuenta = Tipocuentum.all
  end

  # GET /tipocuenta/1
  # GET /tipocuenta/1.json
  def show
  end

  # GET /tipocuenta/new
  def new
    @tipocuentum = Tipocuentum.new
  end

  # GET /tipocuenta/1/edit
  def edit
  end

  # POST /tipocuenta
  # POST /tipocuenta.json
  def create
    @tipocuentum = Tipocuentum.new(tipocuentum_params)

    respond_to do |format|
      if @tipocuentum.save
        format.html { redirect_to @tipocuentum, notice: 'Tipocuentum was successfully created.' }
        format.json { render :show, status: :created, location: @tipocuentum }
      else
        format.html { render :new }
        format.json { render json: @tipocuentum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipocuenta/1
  # PATCH/PUT /tipocuenta/1.json
  def update
    respond_to do |format|
      if @tipocuentum.update(tipocuentum_params)
        format.html { redirect_to @tipocuentum, notice: 'Tipocuentum was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipocuentum }
      else
        format.html { render :edit }
        format.json { render json: @tipocuentum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipocuenta/1
  # DELETE /tipocuenta/1.json
  def destroy
    @tipocuentum.destroy
    respond_to do |format|
      format.html { redirect_to tipocuenta_url, notice: 'Tipocuentum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipocuentum
      @tipocuentum = Tipocuentum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipocuentum_params
      params.require(:tipocuentum).permit(:nombretipocuenta, :fechaingresotipocuenta)
    end
end
