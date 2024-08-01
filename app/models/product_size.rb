class ProductSize < ApplicationRecord
  include RansackableAttributes
  belongs_to :product
  belongs_to :size
end
