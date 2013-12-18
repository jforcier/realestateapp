class SlistingsController < ApplicationController
  before_action :set_slisting, only: [:show, :edit, :update, :destroy]

  # GET /slistings
  # GET /slistings.json
  def index
    @slistings = Slisting.all
  end

  # GET /slistings/1
  # GET /slistings/1.json
  def show
  end

  # GET /slistings/new
  def new
    @slisting = Slisting.new
  end

  # GET /slistings/1/edit
  def edit
  end

  # POST /slistings
  # POST /slistings.json
  def create
    @slisting = Slisting.new(slisting_params)

    respond_to do |format|
      if @slisting.save
        format.html { redirect_to @slisting, notice: 'Slisting was successfully created.' }
        format.json { render action: 'show', status: :created, location: @slisting }
      else
        format.html { render action: 'new' }
        format.json { render json: @slisting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slistings/1
  # PATCH/PUT /slistings/1.json
  def update
    respond_to do |format|
      if @slisting.update(slisting_params)
        format.html { redirect_to @slisting, notice: 'Slisting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @slisting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slistings/1
  # DELETE /slistings/1.json
  def destroy
    @slisting.destroy
    respond_to do |format|
      format.html { redirect_to slistings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slisting
      @slisting = Slisting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slisting_params
      params.require(:slisting).permit(:city, :address, :size, :price, :building_type, :building_class, :sale_type, :floors, :parking_string, :brokerage, :notes)
    end
end
