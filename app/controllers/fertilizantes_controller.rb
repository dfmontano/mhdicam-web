class FertilizantesController < ApplicationController
  before_action :set_fertilizante, only: [:show, :edit, :update, :destroy]

  # GET /fertilizantes
  # GET /fertilizantes.json
  def index
    @fertilizantes = Fertilizante.all
  end

  # GET /fertilizantes/1
  # GET /fertilizantes/1.json
  def show
  end

  # GET /fertilizantes/new
  def new
    @fertilizante = Fertilizante.new
  end

  # GET /fertilizantes/1/edit
  def edit
  end

  # POST /fertilizantes
  # POST /fertilizantes.json
  def create
    @fertilizante = Fertilizante.new(fertilizante_params)

    respond_to do |format|
      if @fertilizante.save
        format.html { redirect_to @fertilizante, notice: 'Fertilizante was successfully created.' }
        format.json { render :show, status: :created, location: @fertilizante }
      else
        format.html { render :new }
        format.json { render json: @fertilizante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fertilizantes/1
  # PATCH/PUT /fertilizantes/1.json
  def update
    respond_to do |format|
      if @fertilizante.update(fertilizante_params)
        format.html { redirect_to @fertilizante, notice: 'Fertilizante was successfully updated.' }
        format.json { render :show, status: :ok, location: @fertilizante }
      else
        format.html { render :edit }
        format.json { render json: @fertilizante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fertilizantes/1
  # DELETE /fertilizantes/1.json
  def destroy
    @fertilizante.destroy
    respond_to do |format|
      format.html { redirect_to fertilizantes_url, notice: 'Fertilizante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fertilizante
      @fertilizante = Fertilizante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fertilizante_params
      params.require(:fertilizante).permit(:marca, :tipo, :precio, :presentacion, :stock, :liquido)
    end
end
