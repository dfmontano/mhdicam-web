class BalanceadosController < ApplicationController
  before_action :set_balanceado, only: [:show, :edit, :update, :destroy]

  # GET /balanceados
  # GET /balanceados.json
  def index
    @balanceados = Balanceado.all
  end

  # GET /balanceados/1
  # GET /balanceados/1.json
  def show
  end

  # GET /balanceados/new
  def new
    @balanceado = Balanceado.new
  end

  # GET /balanceados/1/edit
  def edit
  end

  def fix_stock

    @balanceado = Balanceado.find(params[:id])

    cantidad = params[:nuevoStock]

    @balanceado.update_attribute(:stock, cantidad)
    
    flash[:notice] = 'Stock actualizado'

  end

  def sub_stock

    @balanceado = Balanceado.find(params[:id])

    stock = @balanceado.stock
    cantidad = params[:nuevoStock]

    if cantidad > stock

      stock = stock - cantidad
      @balanceado.update_attribute(:stock, stock)

    else

      flash[:notice] = 'El stock es menor a la cantidad ingresada'

    end

  end

  def add_stock

    @balanceado = Balanceado.find(params[:id])

    stock = Balanceado.stock
    cantidad = params[:nuevoStock]

    stock = stock + cantidad

    @balanceado.update_attribute(:stock, stock)

    flash[:notice] = 'Stock actualizado correctamente'

  end

  # POST /balanceados
  # POST /balanceados.json
  def create
    @balanceado = Balanceado.new(balanceado_params)

    respond_to do |format|
      if @balanceado.save
        format.html {redirect_to @balanceado, notice: 'Balanceado creado satisfactoriamente.'}
        format.json {render :show, status: :created, location: @balanceado}
      else
        format.html {render :new}
        format.json {render json: @balanceado.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /balanceados/1
  # PATCH/PUT /balanceados/1.json
  def update
    respond_to do |format|
      if @balanceado.update(balanceado_params)
        format.html {redirect_to @balanceado, notice: 'Balanceado actualizado correctamente.'}
        format.json {render :show, status: :ok, location: @balanceado}
      else
        format.html {render :edit}
        format.json {render json: @balanceado.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /balanceados/1
  # DELETE /balanceados/1.json
  def destroy
    @balanceado.destroy
    respond_to do |format|
      format.html {redirect_to balanceados_url, notice: 'Balanceado eliminado con éxito.'}
      format.json {head :no_content}
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_balanceado
    @balanceado = Balanceado.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def balanceado_params
    params.require(:balanceado).permit(:marca, :tipo, :precio, :presentacion, :stock, :nuevoStock)
  end
end
