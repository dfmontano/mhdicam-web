class BacteriaController < ApplicationController
  before_action :set_bacterium, only: [:show, :edit, :update, :destroy]

  # GET /bacteria
  # GET /bacteria.json
  def index
    @bacteria = Bacterium.all
  end

  # GET /bacteria/1
  # GET /bacteria/1.json
  def show
  end

  # GET /bacteria/new
  def new
    @bacterium = Bacterium.new
  end

  # GET /bacteria/1/edit
  def edit
  end

  # POST /bacteria
  # POST /bacteria.json
  def create
    @bacterium = Bacterium.new(bacterium_params)

    respond_to do |format|
      if @bacterium.save
        format.html { redirect_to @bacterium, notice: 'Bacteria creada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @bacterium }
      else
        format.html { render :new }
        format.json { render json: @bacterium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bacteria/1
  # PATCH/PUT /bacteria/1.json
  def update
    respond_to do |format|
      if @bacterium.update(bacterium_params)
        format.html { redirect_to @bacterium, notice: 'Bacteria actualizada.' }
        format.json { render :show, status: :ok, location: @bacterium }
      else
        format.html { render :edit }
        format.json { render json: @bacterium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bacteria/1
  # DELETE /bacteria/1.json
  def destroy
    @bacterium.destroy
    respond_to do |format|
      format.html { redirect_to bacteria_url, notice: 'Bacterium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bacterium
      @bacterium = Bacterium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bacterium_params
      params.require(:bacterium).permit(:marca, :tipo, :precio, :presentacion, :stock, :liquido)
    end
end
