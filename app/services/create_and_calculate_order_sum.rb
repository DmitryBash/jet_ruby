class CreateAndCalculateOrderSum
  attr_accessor :order, :products

  def initialize(user, params)
    @order = Order.new(profile_id: user.profile.id)
    @products = Product.where(id: params[:product_ids])
  end

  def create_order
    products.each do |product|
      order.products << product
    end
    calculate_order_sum(order)
    order.save!
  end

  def calculate_order_sum(order)
    order.products.each do |product|
      order.order_sum += product.price
    end
  end
end
