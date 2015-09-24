class CartItem < SimpleDelegator
  attr_reader :quantity
  
  def initialize(item, quantity)
    super(item)
    @quantity = quantity
  end

  def subtotal
  	# byebug
    quantity.to_i * self.price
  end
end