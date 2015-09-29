class Item < ActiveRecord::Base
  validates :title, :description, :price, presence: :true
  validates :categories, presence: :true
  has_and_belongs_to_many :categories
  has_many :order_items

  has_attached_file :picture, styles: {large: "500x300>", medium: "700x700>", thumb: "100x100>" }, bucket: 'give-n-get'
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
end
