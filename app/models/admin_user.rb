class AdminUser < ApplicationRecord
  include Ransackable
  devise :database_authenticatable, :recoverable, :rememberable, :validatable
end
