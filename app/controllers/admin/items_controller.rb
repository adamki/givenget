class Admin::ItemsController < AdminController

  before_action :load_item, only: [:edit, :update, :destroy]

  def index
    @items = Item.all
    @categories = Category.all
  end

  def edit

  end

  def update
    if @item.update(item_params)
      redirect_to admin_items_path
    else
      flash[:notice] = @item.errors.full_messages.join(", ")
      render :edit
    end
  end

  def destroy
    @item.delete
    redirect_to admin_items_path
  end

  private

  def item_params
    params.require(:item).permit(:title, :description, :price, :picture)
  end

  def load_item
    @item = Item.find(params[:id])
  end

end
