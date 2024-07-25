class Product < ApplicationRecord
  belongs_to :category
  has_many :orders,through: :order_items
  has_many :sizes, through: :product_sizes
end
