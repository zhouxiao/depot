class StoreController < ApplicationController
 	skip_before_filter :authorize
  def index
  
   	if session[:counter].nil?
 			session[:counter] = 0
 		end
    session[:counter] += 1
  	@products = Product.all

	  @products = Product.all
  	@cart = current_cart

  end

end
