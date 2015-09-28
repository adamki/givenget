class OrderCreator
  attr_reader :cart, :user

  def initialize(cart, user)
    @cart = cart
    @user = user
  end

  def generate
    self.cart.each_with_object(Order.create(user: self.user)) do |item, order|
      OrderItem.create(order_item_params(item, order))
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