class CartsController < ApplicationController

  def show
  end

  def create
  	item_id = params[:cart][:item]
    if params[:cart][:quantity].to_i > 0
      cart_items_session[item_id] = params[:cart][:quantity]
      flash.notice = "Item added to cart!" 
    else
      flash.notice = "Inavalid Quantity! :( " 
    end
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
