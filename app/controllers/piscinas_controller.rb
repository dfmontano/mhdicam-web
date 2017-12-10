class PiscinasController < ApplicationController
  before_action :set_piscina, only: [:show, :edit, :update, :destroy]

  # GET /piscinas
  # GET /piscinas.json
  def index
    @piscinas = Piscina.all
  end

  # GET /piscinas/1
  # GET /piscinas/1.json
  def show
  end

  # GET /piscinas/new
  def new
    @piscina = Piscina.new
  end

  # GET /piscinas/1/edit
  def edit
  end

  # POST /piscinas
  # POST /piscinas.json
  def create
    @piscina = Piscina.new(piscina_params)

    respond_to do |format|
      if @piscina.save
        format.html { redirect_to @piscina, notice: 'Piscina creada correctamente' }
        format.json { render :show, status: :created, location: @piscina }
      else
        format.html { render :new }
        format.json { render json: @piscina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piscinas/1
  # PATCH/PUT /piscinas/1.json
  def update
    respond_to do |format|
      if @piscina.update(piscina_params)
        format.html { redirect_to @piscina, notice: 'Piscina actualizada satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @piscina }
      else
        format.html { render :edit }
        format.json { render json: @piscina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piscinas/1
  # DELETE /piscinas/1.json
  def destroy
    @piscina.destroy
    respond_to do |format|
      format.html { redirect_to piscinas_url, notice: 'Piscina eliminada correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piscina
      @piscina = Piscina.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piscina_params
      params.require(:piscina).permit(:nombre, :hectareas, :estado)
    end
end
