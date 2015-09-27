require 'rails_helper'

describe 'order_item' do
  before do
    @order = Order.new
    @item = Item.first
  end

  it 'must have an order' do
    oi = OrderItem.new(item: @item, order: nil)
    expect(oi).to_not be_valid
  end

  it 'must have an item' do
    oi = OrderItem.new(item: nil, order: @order)
  end
end