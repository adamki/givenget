class Item < ActiveRecord::Base
  validates :title, :description, :price, presence: :true
  validates :title, uniqueness: true
  validates :categories, presence: :true
  has_and_belongs_to_many :categories
  has_many :order_items
  before_save :set_slug

  private

  def set_slug
    self.slug = title.parameterize
  end
end
