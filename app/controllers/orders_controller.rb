class OrdersController < ApplicationController
  def index
    #create the order
    order_creator = OrderCreator.new(cart)
    order_creator.generate
    flash.notice = "Order placed!"
    redirect_to dashboard_path

  end  
end