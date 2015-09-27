class Item < ActiveRecord::Base
  validates :title, :description, :price, presence: :true
  validates :categories, presence: :true
  has_and_belongs_to_many :categories
  has_many :order_items
end
