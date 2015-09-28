class OrdersController < ApplicationController
  def index
    # log user in if they are not
    order_creator = OrderCreator.new(cart, current_user)
    @order = order_creator.generate
    if @order
      flash.notice = "Order placed!"
    else
      flash.notice = "Unable to place order"
      redirect_to cart_path
    end
  end  
end
