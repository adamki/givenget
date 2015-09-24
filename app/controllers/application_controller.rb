class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :cart, :cart_total, :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def cart
    Cart.new(session[:cart]).items || []
  end

  #move to cart model
  def cart_total(cart_items)
    cart_items.reduce(0) { |acc, item| acc + item.subtotal }
  end

end
