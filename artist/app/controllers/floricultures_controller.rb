class FloriculturesController < ApplicationController
  before_action :set_floriculture, only: [:show, :edit, :update, :destroy]

  # GET /floricultures
  # GET /floricultures.json
  def index
    @floricultures = Floriculture.all
  end

  # GET /floricultures/1
  # GET /floricultures/1.json
  def show
  end

  # GET /floricultures/new
  def new
    @floriculture = Floriculture.new
  end

  # GET /floricultures/1/edit
  def edit
  end

  # POST /floricultures
  # POST /floricultures.json
  def create
    @floriculture = Floriculture.new(floriculture_params)

    respond_to do |format|
      if @floriculture.save
        format.html { redirect_to @floriculture, notice: 'Floriculture was successfully created.' }
        format.json { render :show, status: :created, location: @floriculture }
      else
        format.html { render :new }
        format.json { render json: @floriculture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /floricultures/1
  # PATCH/PUT /floricultures/1.json
  def update
    respond_to do |format|
      if @floriculture.update(floriculture_params)
        format.html { redirect_to @floriculture, notice: 'Floriculture was successfully updated.' }
        format.json { render :show, status: :ok, location: @floriculture }
      else
        format.html { render :edit }
        format.json { render json: @floriculture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /floricultures/1
  # DELETE /floricultures/1.json
  def destroy
    @floriculture.destroy
    respond_to do |format|
      format.html { redirect_to floricultures_url, notice: 'Floriculture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_floriculture
      @floriculture = Floriculture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def floriculture_params
      params.require(:floriculture).permit(:name, :description, :varieties, :climate, :soil, :seedrate, :season, :fertilizer, :diseases)
    end
end
