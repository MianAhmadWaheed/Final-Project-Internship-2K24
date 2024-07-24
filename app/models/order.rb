class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :payment, optional: true
  has_many :order_items
end
