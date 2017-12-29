class GastosFertilizantesController < ApplicationController
  before_action :set_gastos_fertilizante, only: [:show, :edit, :update, :destroy]

  # GET /gastos_fertilizantes
  # GET /gastos_fertilizantes.json
  def index
    @gastos_fertilizantes = GastosFertilizante.all
  end

  # GET /gastos_fertilizantes/1
  # GET /gastos_fertilizantes/1.json
  def show
  end

  # GET /gastos_fertilizantes/new
  def new
    @gastos_fertilizante = GastosFertilizante.new
  end

  # GET /gastos_fertilizantes/1/edit
  def edit
  end

  # POST /gastos_fertilizantes
  # POST /gastos_fertilizantes.json
  def create
    @gastos_fertilizante = GastosFertilizante.new(gastos_fertilizante_params)

    respond_to do |format|
      if @gastos_fertilizante.save
        format.html { redirect_to @gastos_fertilizante, notice: 'Gastos fertilizante was successfully created.' }
        format.json { render :show, status: :created, location: @gastos_fertilizante }
      else
        format.html { render :new }
        format.json { render json: @gastos_fertilizante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gastos_fertilizantes/1
  # PATCH/PUT /gastos_fertilizantes/1.json
  def update
    respond_to do |format|
      if @gastos_fertilizante.update(gastos_fertilizante_params)
        format.html { redirect_to @gastos_fertilizante, notice: 'Gastos fertilizante was successfully updated.' }
        format.json { render :show, status: :ok, location: @gastos_fertilizante }
      else
        format.html { render :edit }
        format.json { render json: @gastos_fertilizante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gastos_fertilizantes/1
  # DELETE /gastos_fertilizantes/1.json
  def destroy
    @gastos_fertilizante.destroy
    respond_to do |format|
      format.html { redirect_to gastos_fertilizantes_url, notice: 'Gastos fertilizante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gastos_fertilizante
      @gastos_fertilizante = GastosFertilizante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gastos_fertilizante_params
      params.require(:gastos_fertilizante).permit(:cantidad, :id_fertilizante, :id_periodo, :precioUnit, :subtital)
    end
end
