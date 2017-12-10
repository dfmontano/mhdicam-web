class CorridasController < ApplicationController
  before_action :set_corrida, only: [:show, :edit, :update, :destroy]

  # GET /corridas
  # GET /corridas.json
  def index
    @corridas = Corrida.all
  end

  # GET /corridas/1
  # GET /corridas/1.json
  def show
  end

  # GET /corridas/new
  def new
    @corrida = Corrida.new
  end

  # GET /corridas/1/edit
  def edit
  end

  # POST /corridas
  # POST /corridas.json
  def create
    @corrida = Corrida.new(corrida_params)

    respond_to do |format|
      if @corrida.save
        format.html { redirect_to @corrida, notice: 'Corrida creada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @corrida }
      else
        format.html { render :new }
        format.json { render json: @corrida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /corridas/1
  # PATCH/PUT /corridas/1.json
  def update
    respond_to do |format|
      if @corrida.update(corrida_params)
        format.html { redirect_to @corrida, notice: 'Corrida actualizada correctamente.' }
        format.json { render :show, status: :ok, location: @corrida }
      else
        format.html { render :edit }
        format.json { render json: @corrida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corridas/1
  # DELETE /corridas/1.json
  def destroy
    @corrida.destroy
    respond_to do |format|
      format.html { redirect_to corridas_url, notice: 'Corrida eliminada correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corrida
      @corrida = Corrida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def corrida_params
      params.require(:corrida).permit(:fechaInicio, :fechaFin, :estado)
    end
end
