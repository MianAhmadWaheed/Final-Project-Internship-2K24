class Size < ApplicationRecord
  has_many :products, through: :product_sizes
  has_many :product_sizes
  enum size: { small: 0, medium: 1, large: 2 }

  def self.ransackable_associations(auth_object = nil)
    ["product_sizes", "products"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "size", "updated_at"]
  end

  def display_name
    size.humanize
  end
end
