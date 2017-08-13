class Product < ApplicationRecord
  enum category: [:first_course, :second_course, :drinks]
  validates :category, :name, :price, :today_date, presence: true

  belongs_to :week_day
  has_many :order_products
  has_many :orders, through: :order_products
end
