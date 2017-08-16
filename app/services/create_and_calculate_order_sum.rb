class CreateAndCalculateOrderSum
  attr_accessor :order, :products, :user

  def initialize(user, params)
    @user = user
    @order = Order.new(profile_id: user.profile.id)
    @products = Product.where(id: params[:product_ids])
  end

  def call
    begin
      products.each do |product|
        order.products << product
      end
      calculate_order_sum(order)
      init_fields(order, user)
      order.save!
    rescue => error
      puts error.inspect
    end
  end

  def calculate_order_sum(order)
    order.products.each do |product|
      order.order_sum += product.price
    end
  end

  def init_fields(order, user)
    order.full_name = user.profile.add_full_name
    order.email = user.email
    order.order_date = Date.today
    order.phone = user.profile.phone
    order.organisation_id = user.profile.organisation_id
  end
end
