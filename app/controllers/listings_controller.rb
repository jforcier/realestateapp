class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /listings
  # GET /listings.json
  def index
    @search = Listing.search(params[:q])
    @listings = @search.result
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
    @listings = Listing.all
  end

  # GET /listings/new
  def new
    @listing = current_user.listings.build
  end

  # GET /listings/1/edit
  def edit
  end

  # POST /listings
  # POST /listings.json
  def create
    @listing = current_user.listings.build(listing_params)

      if @listing.save
        redirect_to @listing, notice: 'Listing was succesffuly created.'
      else
        render action: 'new'
      end
    end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
      if @listing.update(listing_params)
        redirect_to @listing, notice: 'Listing was succesffuly updated.'
      else
        render action: 'edit'
      end
    end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing.destroy
    redirect_to listings_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    def correct_user
      @listing = current_user.listings.find_by(id: params[:id])
      redirect_to listings_path, notice: "Not authorized to edit this Listing" if @listing.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:listing).permit(:city, :address, :suite, :size, :building_type, :building_class, :asking_rate, :opex, :lease_type, :brokerage, :notes)
    end
end
