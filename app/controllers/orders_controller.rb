class OrdersController < ApplicationController
  before_action :verify_logged_in, only:[:index]

  def index
    order_creator = OrderCreator.new(order_params)
    if order_creator.generate
      cart.clear
      flash.notice = "Order placed!"
      redirect_to dashboard_path
    else
      flash.notice = "Unable to place order"
      redirect_to cart_path
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  private
  def verify_logged_in
    if !current_user
      session[:redirect] = request.referrer
      redirect_to signin_or_signup_path
    end
  end

  def order_params
    byebug
    {cart: cart,
      user: current_user,
      will_pay: params[:will_pay]}
  end
end
