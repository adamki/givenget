class OrderCreator
  attr_reader :cart

  def initialize(cart)
    @cart = cart
    @order_items = create_order_items
  end

  def create_order_items

  end

end