class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    # need action for non-existent category
  end

  def destroy
    @category = Category.find(params[:id])
    @category.delete
    redirect_to categories_path
  end
end