class CategoriesController < ApplicationController

  def show
    @category = Category.find_by(slug: params[:slug])
    # need action for non-existent category
  end

end
