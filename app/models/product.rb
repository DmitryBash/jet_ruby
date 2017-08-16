class Product < ApplicationRecord
  mount_uploader :photo_url, PhotoUploader
  enum category: [:first_course, :second_course, :drinks]
  validates :category, :name, :price, :today_date, :photo_url, presence: true

  belongs_to :week_day
  belongs_to :organisation
  has_many :order_products
  has_many :orders, through: :order_products
end
