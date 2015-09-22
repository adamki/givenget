class CartItem < SimpleDelegator
  attr_reader :quantity
  
  def initialize(item, quantity)
    super(item)
    @quantity = quantity
  end

  def subtotal
    quantity * self.price
  end
end