class Category < ApplicationRecord
  include Ransackable
  has_many :products
  enum name: { male: 0, female: 1 }
end
