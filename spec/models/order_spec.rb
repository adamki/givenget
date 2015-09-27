require 'rails_helper'

describe 'order' do

    # pencil, 10.20, 2, 20.40
    # junk, 20.99, 5, 104.95
    # haircut, 15.99, 1, 15.99
  end

  # def items
  #   self.cart_data.map do |item_id, quantity|
  #     item = Item.find(item_id)
  #     CartItem.new(item, quantity)
  #   end
  # end

  # end
  it 'creates an order from a cart' do
    order = Order.new(@cart)
    expect(order.class).to eq(Order)
  end

  it 'creates an order item for each cart item' do
    @cart.each do |item|
      expect true
    end
  end
end