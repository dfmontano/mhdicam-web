class VitaminasController < ApplicationController
  before_action :set_vitamina, only: [:show, :edit, :update, :destroy]

  # GET /vitaminas
  # GET /vitaminas.json
  def index
    @vitaminas = Vitamina.all
  end

  # GET /vitaminas/1
  # GET /vitaminas/1.json
  def show
  end

  # GET /vitaminas/new
  def new
    @vitamina = Vitamina.new
  end

  # GET /vitaminas/1/edit
  def edit
  end

  # POST /vitaminas
  # POST /vitaminas.json
  def create
    @vitamina = Vitamina.new(vitamina_params)

    respond_to do |format|
      if @vitamina.save
        format.html { redirect_to @vitamina, notice: 'Vitamina was successfully created.' }
        format.json { render :show, status: :created, location: @vitamina }
      else
        format.html { render :new }
        format.json { render json: @vitamina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vitaminas/1
  # PATCH/PUT /vitaminas/1.json
  def update
    respond_to do |format|
      if @vitamina.update(vitamina_params)
        format.html { redirect_to @vitamina, notice: 'Vitamina was successfully updated.' }
        format.json { render :show, status: :ok, location: @vitamina }
      else
        format.html { render :edit }
        format.json { render json: @vitamina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vitaminas/1
  # DELETE /vitaminas/1.json
  def destroy
    @vitamina.destroy
    respond_to do |format|
      format.html { redirect_to vitaminas_url, notice: 'Vitamina was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vitamina
      @vitamina = Vitamina.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vitamina_params
      params.require(:vitamina).permit(:marca, :tipo, :precio, :presentacion, :stock, :liquido)
    end
end
