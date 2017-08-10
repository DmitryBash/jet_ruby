class Product < ApplicationRecord
  belongs_to :week_day
  has_many :order_products
  has_many :orders, through: :order_products
  enum category: [:first_course, :second_course, :drinks]
end
