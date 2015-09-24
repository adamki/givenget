class Item < ActiveRecord::Base
  has_and_belongs_to_many :categories
  validates :title, :description, :price, presence: :true
end
