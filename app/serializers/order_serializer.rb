class OrderSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email, :order_sum, :order_date, :profile_id

  has_one :profile
  has_many :order_products
  has_many :products, through: :order_products
end
