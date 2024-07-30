class Product < ApplicationRecord
  belongs_to :category
  has_many :orders,through: :order_items
  has_many :sizes, through: :product_sizes
  has_many :product_sizes, dependent: :destroy


  def self.ransackable_attributes(auth_object = nil)
    ["category_id", "created_at", "description", "id", "id_value", "name", "price", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["category", "orders", "sizes"]
  end
end
