class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :item
  validates :order, presence: true
  validates :item, presence: true
end