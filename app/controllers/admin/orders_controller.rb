class Admin::OrdersController < AdminController

  def index
    @counts = Order.status_counts
    @orders = Order.all
  end

  def paid
    @orders = Order.where(status: "Paid")
  end

  def cancelled
    @orders = Order.where(status: "Cancelled")
  end

  def ordered
    @orders = Order.where(status: "Ordered")
  end

  def completed
    @orders = Order.where(status: "Completed")
  end

  def show
    @order = Order.find(params[:id])
  end

  def update
    order = Order.find(params[:id])
    order.change_status(params[:new_status])
    redirect_to admin_orders_path
  end


end
