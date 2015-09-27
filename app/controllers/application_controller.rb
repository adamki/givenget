class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :cart, :cart_total, :current_user, :current_admin?

  def current_user
    # byebug
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def cart
    if session[:cart]
      @cart ||= Cart.new(session[:cart]["items"])
    else
      @cart = Cart.new
    end
  end

  def current_admin?
    current_user && current_user.role == "admin"
  end
end
