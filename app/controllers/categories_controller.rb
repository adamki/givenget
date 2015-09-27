class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    # need action for non-existent category
  end

end
