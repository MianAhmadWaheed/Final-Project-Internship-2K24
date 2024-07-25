class Product < ApplicationRecord
  belongs_to :category
  has_many :order_items
  has_many :product_sizes
  has_many :sizes, through: :product_sizes
end
