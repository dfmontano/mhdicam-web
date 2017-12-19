class GastosBalanceadosController < ApplicationController
  before_action :set_gastos_balanceado, only: [:show, :edit, :update, :destroy]

  # GET /gastos_balanceados
  # GET /gastos_balanceados.json
  def index
    @gastos_balanceados = GastosBalanceado.all
  end

  # GET /gastos_balanceados/1
  # GET /gastos_balanceados/1.json
  def show
  end

  # GET /gastos_balanceados/new
  def new
    @gastos_balanceado = GastosBalanceado.new
  end

  # GET /gastos_balanceados/1/edit
  def edit
  end

  # POST /gastos_balanceados
  # POST /gastos_balanceados.json
  def create
    @gastos_balanceado = GastosBalanceado.new(gastos_balanceado_params)

    respond_to do |format|
      if @gastos_balanceado.save
        format.html { redirect_to @gastos_balanceado, notice: 'Gastos balanceado was successfully created.' }
        format.json { render :show, status: :created, location: @gastos_balanceado }
      else
        format.html { render :new }
        format.json { render json: @gastos_balanceado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gastos_balanceados/1
  # PATCH/PUT /gastos_balanceados/1.json
  def update
    respond_to do |format|
      if @gastos_balanceado.update(gastos_balanceado_params)
        format.html { redirect_to @gastos_balanceado, notice: 'Gastos balanceado was successfully updated.' }
        format.json { render :show, status: :ok, location: @gastos_balanceado }
      else
        format.html { render :edit }
        format.json { render json: @gastos_balanceado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gastos_balanceados/1
  # DELETE /gastos_balanceados/1.json
  def destroy
    @gastos_balanceado.destroy
    respond_to do |format|
      format.html { redirect_to gastos_balanceados_url, notice: 'Gastos balanceado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gastos_balanceado
      @gastos_balanceado = GastosBalanceado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gastos_balanceado_params
      params.require(:gastos_balanceado).permit(:id_balanceado, :id_periodo, :cantidad, :precioKg, :subtotal)
    end
end
