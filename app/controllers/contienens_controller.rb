class ContienensController < ApplicationController
  before_action :set_contienen, only: [:show, :edit, :update, :destroy]

  # GET /contienens
  # GET /contienens.json
  def index
    @contienens = Contienen.all
  end

  # GET /contienens/1
  # GET /contienens/1.json
  def show
  end

  # GET /contienens/new
  def new
    @contienen = Contienen.new
  end

  # GET /contienens/1/edit
  def edit
  end

  # POST /contienens
  # POST /contienens.json
  def create
    @contienen = Contienen.new(contienen_params)

    respond_to do |format|
      if @contienen.save
        format.html { redirect_to @contienen, notice: 'Contienen was successfully created.' }
        format.json { render :show, status: :created, location: @contienen }
      else
        format.html { render :new }
        format.json { render json: @contienen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contienens/1
  # PATCH/PUT /contienens/1.json
  def update
    respond_to do |format|
      if @contienen.update(contienen_params)
        format.html { redirect_to @contienen, notice: 'Contienen was successfully updated.' }
        format.json { render :show, status: :ok, location: @contienen }
      else
        format.html { render :edit }
        format.json { render json: @contienen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contienens/1
  # DELETE /contienens/1.json
  def destroy
    @contienen.destroy
    respond_to do |format|
      format.html { redirect_to contienens_url, notice: 'Contienen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contienen
      @contienen = Contienen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contienen_params
      params.require(:contienen).permit(:foliocertificadoriesgo, :idavalesencertificados)
    end
end
