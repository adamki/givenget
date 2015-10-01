class Admin::OrdersController < AdminController
  def index
    @counts = Order.status_counts
    @orders = Order.all
  end

  def by_status
    @orders = Order.by_status(params[:status])
  end

  def show
    @order = Order.find(params[:id])
  end

  def update
    order = Order.find(params[:id])
    order.change_status(params[:new_status])
    redirect_to request.referrer
  end
end
