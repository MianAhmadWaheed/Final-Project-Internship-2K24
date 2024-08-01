class AdminUser < ApplicationRecord
  include RansackableAttributes
  devise :database_authenticatable, :recoverable, :rememberable, :validatable
end
