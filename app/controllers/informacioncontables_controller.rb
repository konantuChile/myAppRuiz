class InformacioncontablesController < ApplicationController
  before_action :set_informacioncontable, only: [:show, :edit, :update, :destroy]

  # GET /informacioncontables
  # GET /informacioncontables.json
  def index
    @informacioncontables = Informacioncontable.all
  end

  # GET /informacioncontables/1
  # GET /informacioncontables/1.json
  def show
  end

  # GET /informacioncontables/new
  def new
    @informacioncontable = Informacioncontable.new
  end

  # GET /informacioncontables/1/edit
  def edit
  end

  # POST /informacioncontables
  # POST /informacioncontables.json
  def create
    @informacioncontable = Informacioncontable.new(informacioncontable_params)

    respond_to do |format|
      if @informacioncontable.save
        format.html { redirect_to @informacioncontable, notice: 'Informacioncontable was successfully created.' }
        format.json { render :show, status: :created, location: @informacioncontable }
      else
        format.html { render :new }
        format.json { render json: @informacioncontable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /informacioncontables/1
  # PATCH/PUT /informacioncontables/1.json
  def update
    respond_to do |format|
      if @informacioncontable.update(informacioncontable_params)
        format.html { redirect_to @informacioncontable, notice: 'Informacioncontable was successfully updated.' }
        format.json { render :show, status: :ok, location: @informacioncontable }
      else
        format.html { render :edit }
        format.json { render json: @informacioncontable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /informacioncontables/1
  # DELETE /informacioncontables/1.json
  def destroy
    @informacioncontable.destroy
    respond_to do |format|
      format.html { redirect_to informacioncontables_url, notice: 'Informacioncontable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_informacioncontable
      @informacioncontable = Informacioncontable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def informacioncontable_params
      params.require(:informacioncontable).permit(:correlativoinformacion, :idtipomoneda, :idcuentacontable, :montoinforcontable, :periodoinforcontable, :fechaingresoinformcontables)
    end
end
