class CartsController < ApplicationController

  def show
    qty = rand(1..9)
    @cart = CartItem.all.sample(qty)
  end

end
