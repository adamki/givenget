class OrderCreator
  attr_reader :cart

  def initialize(cart)
    @cart = cart
  end

  def generate
    order = cart.each_with_object(Order.create) do |item, order|
      OrderItem.new(order_item_params(item, order))
    end
  end

  def order_item_params(cart_item, order)
    item = Item.find(cart_item.id)
    {item: item,
      item_quantity: cart_item.quantity,
      item_price: item.price,
      order: order
    }
  end

end