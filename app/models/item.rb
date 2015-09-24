class Item < ActiveRecord::Base
  validates :title, :description, :price, presence: :true
  has_and_belongs_to_many :categories
end
