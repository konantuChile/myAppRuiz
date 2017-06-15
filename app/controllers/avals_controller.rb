class AvalsController < ApplicationController
  before_action :set_aval, only: [:show, :edit, :update, :destroy]

  # GET /avals
  # GET /avals.json
  def index
    @avals = Aval.all
  end

  # GET /avals/1
  # GET /avals/1.json
  def show
  end

  # GET /avals/new
  def new
    @aval = Aval.new
  end

  # GET /avals/1/edit
  def edit
  end

  # POST /avals
  # POST /avals.json
  def create
    @aval = Aval.new(aval_params)

    respond_to do |format|
      if @aval.save
        format.html { redirect_to @aval, notice: 'Aval was successfully created.' }
        format.json { render :show, status: :created, location: @aval }
      else
        format.html { render :new }
        format.json { render json: @aval.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avals/1
  # PATCH/PUT /avals/1.json
  def update
    respond_to do |format|
      if @aval.update(aval_params)
        format.html { redirect_to @aval, notice: 'Aval was successfully updated.' }
        format.json { render :show, status: :ok, location: @aval }
      else
        format.html { render :edit }
        format.json { render json: @aval.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avals/1
  # DELETE /avals/1.json
  def destroy
    @aval.destroy
    respond_to do |format|
      format.html { redirect_to avals_url, notice: 'Aval was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aval
      @aval = Aval.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aval_params
      params.require(:aval).permit(:rutempresa, :montomaxgarantia, :fechaingresoaval)
    end
end
