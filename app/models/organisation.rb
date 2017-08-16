class Organisation < ApplicationRecord
  has_many :profiles
  has_many :orders
  has_many :products
  validates :organisation_name, presence: true
end
