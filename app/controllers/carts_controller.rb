class CartsController < ApplicationController

  def show
    cart_items = Item.all.map do |item|
      qty = rand(1..9)
      CartItem.new(item, qty)
    end
    qty = rand(1..9)
    @cart = cart_items.sample(qty)
  end

end
