class PagesController < ApplicationController
  def home
  end

  def about
  end

  def my_profile
  end

  def search_database
  	
  end

  def for_lease
    @search = Listing.search(params[:q])
    @listings = @search.result
  end

  def lease_comps
  end

  def for_sale
  end

  def sale_comps
  end

  def property_directory
  end

  def my_listings
    @listings = current_user.listings
  end

  def current_deals
  end

  def closed_deals
  end

  def accounts_receivable
  end
  
end
