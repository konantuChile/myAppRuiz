class CuentacontablesController < ApplicationController
  before_action :set_cuentacontable, only: [:show, :edit, :update, :destroy]

  # GET /cuentacontables
  # GET /cuentacontables.json
  def index
    @cuentacontables = Cuentacontable.all
  end

  # GET /cuentacontables/1
  # GET /cuentacontables/1.json
  def show
  end

  # GET /cuentacontables/new
  def new
    @cuentacontable = Cuentacontable.new
  end

  # GET /cuentacontables/1/edit
  def edit
  end

  # POST /cuentacontables
  # POST /cuentacontables.json
  def create
    @cuentacontable = Cuentacontable.new(cuentacontable_params)

    respond_to do |format|
      if @cuentacontable.save
        format.html { redirect_to @cuentacontable, notice: 'Cuentacontable was successfully created.' }
        format.json { render :show, status: :created, location: @cuentacontable }
      else
        format.html { render :new }
        format.json { render json: @cuentacontable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cuentacontables/1
  # PATCH/PUT /cuentacontables/1.json
  def update
    respond_to do |format|
      if @cuentacontable.update(cuentacontable_params)
        format.html { redirect_to @cuentacontable, notice: 'Cuentacontable was successfully updated.' }
        format.json { render :show, status: :ok, location: @cuentacontable }
      else
        format.html { render :edit }
        format.json { render json: @cuentacontable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cuentacontables/1
  # DELETE /cuentacontables/1.json
  def destroy
    @cuentacontable.destroy
    respond_to do |format|
      format.html { redirect_to cuentacontables_url, notice: 'Cuentacontable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cuentacontable
      @cuentacontable = Cuentacontable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cuentacontable_params
      params.require(:cuentacontable).permit(:idtipocuenta, :nombrecuentacontable, :fechaingresocuentacontab)
    end
end
