class ScompsController < ApplicationController
  before_action :set_scomp, only: [:show, :edit, :update, :destroy]

  # GET /scomps
  # GET /scomps.json
  def index
    @scomps = Scomp.all
  end

  # GET /scomps/1
  # GET /scomps/1.json
  def show
  end

  # GET /scomps/new
  def new
    @scomp = Scomp.new
  end

  # GET /scomps/1/edit
  def edit
  end

  # POST /scomps
  # POST /scomps.json
  def create
    @scomp = Scomp.new(scomp_params)

    respond_to do |format|
      if @scomp.save
        format.html { redirect_to @scomp, notice: 'Scomp was successfully created.' }
        format.json { render action: 'show', status: :created, location: @scomp }
      else
        format.html { render action: 'new' }
        format.json { render json: @scomp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scomps/1
  # PATCH/PUT /scomps/1.json
  def update
    respond_to do |format|
      if @scomp.update(scomp_params)
        format.html { redirect_to @scomp, notice: 'Scomp was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @scomp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scomps/1
  # DELETE /scomps/1.json
  def destroy
    @scomp.destroy
    respond_to do |format|
      format.html { redirect_to scomps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scomp
      @scomp = Scomp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scomp_params
      params.require(:scomp).permit(:city, :address, :size, :sale_price, :cap_rate, :closing_date, :buyer, :seller, :building_type, :building_class, :sale_type, :floors, :buyer_broker, :buyer_agent, :listing_broker, :listing_agent, :notes)
    end
end
