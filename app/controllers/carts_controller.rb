class CartsController < ApplicationController

  def show
  end

  def create
  	item_id = params[:cart][:item]
  	cart_items_session[item_id] = params[:cart][:quantity] if params[:cart][:quantity] != ""
    cart
  	redirect_to '/items'
  end

  def update
    cart.adjust_cart_item_qty(params)
    redirect_to cart_path
  end

  private
  def cart_session
  	session[:cart] ||= {}
  end

  def cart_items_session
  	cart_session["items"] ||= {}
  end
end
