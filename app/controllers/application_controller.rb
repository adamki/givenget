class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :dollar_string, :cart, :cart_total

  def cart
    Cart.new(session[:cart]).items || []
  end

  #move to cart model
  def cart_total(cart_items)
    cart_items.reduce(0) { |acc, item| acc + item.price }
  end

  def dollar_string(cents)
    "$#{cents.to_s}".insert(-3, '.')
  end
end
