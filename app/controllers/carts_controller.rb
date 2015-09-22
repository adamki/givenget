class CartsController < ApplicationController

  def show
    @cart = Item.all.sample(5)
  end

end
