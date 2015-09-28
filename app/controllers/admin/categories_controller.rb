class Admin::CategoriesController < AdminController

  def new
    @category = Category.new
  end

  def index
    @categories = Category.all
  end

  def destroy
    @category = Category.find(params[:id])
    @category.delete
    redirect_to admin_categories_path
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to admin_categories_path
    else
      redirect_to admin_categories_path
    end
  end

  private

  def category_params
    params.require(:category).permit(:title)
  end
end
