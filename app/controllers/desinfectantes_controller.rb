class DesinfectantesController < ApplicationController
  before_action :set_desinfectante, only: [:show, :edit, :update, :destroy]

  # GET /desinfectantes
  # GET /desinfectantes.json
  def index
    @desinfectantes = Desinfectante.all
  end

  # GET /desinfectantes/1
  # GET /desinfectantes/1.json
  def show
  end

  # GET /desinfectantes/new
  def new
    @desinfectante = Desinfectante.new
  end

  # GET /desinfectantes/1/edit
  def edit
  end

  # POST /desinfectantes
  # POST /desinfectantes.json
  def create
    @desinfectante = Desinfectante.new(desinfectante_params)

    respond_to do |format|
      if @desinfectante.save
        format.html { redirect_to @desinfectante, notice: 'Desinfectante was successfully created.' }
        format.json { render :show, status: :created, location: @desinfectante }
      else
        format.html { render :new }
        format.json { render json: @desinfectante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desinfectantes/1
  # PATCH/PUT /desinfectantes/1.json
  def update
    respond_to do |format|
      if @desinfectante.update(desinfectante_params)
        format.html { redirect_to @desinfectante, notice: 'Desinfectante was successfully updated.' }
        format.json { render :show, status: :ok, location: @desinfectante }
      else
        format.html { render :edit }
        format.json { render json: @desinfectante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desinfectantes/1
  # DELETE /desinfectantes/1.json
  def destroy
    @desinfectante.destroy
    respond_to do |format|
      format.html { redirect_to desinfectantes_url, notice: 'Desinfectante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desinfectante
      @desinfectante = Desinfectante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def desinfectante_params
      params.require(:desinfectante).permit(:marca, :tipo, :precio, :presentacion, :stock, :liquido)
    end
end
