class Order < ApplicationRecord
  belongs_to :customer
  #belongs_to :payment, optional: true
  has_one :payment
  has_many :products, through: :order_items
end
