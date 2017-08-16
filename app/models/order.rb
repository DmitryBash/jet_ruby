class Order < ApplicationRecord
  belongs_to :profile
  belongs_to :organisation
  has_many :order_products
  has_many :products, through: :order_products
  validates :full_name, :order_date, :email, :phone, :order_sum, presence: true
end
