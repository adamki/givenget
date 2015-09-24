class CartsController < ApplicationController

  def show
  	@cart_items = cart_items_session.map do |item_id, quantity|  
  		CartItem.new(Item.find(item_id), quantity)
  	end
  end

  def create
  	item_id = params[:cart][:item]
  	cart_items_session[item_id] = params[:cart][:quantity]
  	
  	redirect_to '/items'
  end

  private
  def cart_session
  	session[:cart] ||= {}
  end

  def cart_items_session
  	cart_session["items"] ||= {}
  end

end
