class Order < ActiveRecord::Base
  include Enumerable

  has_many :order_items
  belongs_to :user
  validates :status, format: { with: /Ordered|Paid|Cancelled|Completed/,
    message: "Status must be one of Ordered, Paid, Cancelled, Completed" }

  def total
    self.reduce(0) { |acc, order_item| acc + (order_item.price * order_item.quantity.to_i) }
  end

  def empty?
    !(self.any? { |order_item| order_item.quantity.to_i > 0 })
  end

  def each
    self.order_items.each do |order_item|
      item = Item.find(order_item.item_id)
      display_item = OpenStruct.new(item: item,
                                quantity: order_item.item_quantity,
                                   price: order_item.item_price)
      yield display_item
    end
  end
end