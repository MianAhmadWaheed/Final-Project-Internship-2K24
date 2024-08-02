class Product < ApplicationRecord
  include Ransackable
  belongs_to :category
  has_many :orders,through: :order_items
  has_many :sizes, through: :product_sizes
  has_many :product_sizes, dependent: :destroy
  has_one_attached :image

  accepts_nested_attributes_for :product_sizes, allow_destroy: true

end
