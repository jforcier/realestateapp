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
    @search = Comp.search(params[:q])
    @comps = @search.result
  end

  def for_sale
    @search = Slisting.search(params[:q])
    @slistings = @search.result
  end

  def sale_comps
    @search = Scomp.search(params[:q])
    @scomps = @search.result
  end

  def property_directory
  end

  def my_listings
    @listings = current_user.listings
  end

  def current_deals
  end

  def tenant_rep
  end

  def landlord_rep
  end

  def ccc
  end

  def scc
  end

  def gatowers
  end

  def recently_closed
  end

  def upcoming_exp
  end

  def bitcasa
  end

  def gameclosure
  end

  def startx
  end
  
  def closed_deals
  end

  def accounts_receivable
  end

  def create_invoice
  end

  def commissions
  end
  

  
end
