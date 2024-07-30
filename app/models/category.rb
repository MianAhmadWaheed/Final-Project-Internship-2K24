class Category < ApplicationRecord
  has_many :products
  enum name: { male: 0, female: 1 }
end
