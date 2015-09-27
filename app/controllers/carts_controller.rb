class CartsController < ApplicationController

  def show
  	@cart_items = cart_items_session.map do |item_id, quantity|
  		CartItem.new(Item.find(item_id), quantity)
  	end
  end

  def create
    # byebug
  	item_id = params[:cart][:item]
  	cart_items_session[item_id] = params[:cart][:quantity] if params[:cart][:quantity] != ""
  	redirect_to '/items'
  end

  def update
    item_id = params[:item_id]
    adjust_cart_item_quantity(item_id)
    redirect_to cart_path
  end

  private

  def cart_session
  	session[:cart] ||= {}
  end

  def cart_items_session
  	cart_session["items"] ||= {}
  end

  def adjust_cart_item_quantity(item_id)
    if params[:add]
      cart_items_session[item_id] = cart_items_session[item_id].to_i + 1
    elsif params[:remove] && cart_items_session[item_id].to_i > 1
      cart_items_session[item_id] = cart_items_session[item_id].to_i - 1
    else
      cart_items_session.delete(item_id)
    end
  end
end
