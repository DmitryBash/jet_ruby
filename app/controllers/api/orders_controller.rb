class Api::OrdersController < Api::ApplicationController
  def index
    if current_user.admin?
      @orders = Order.where(order_date: Date.today)
      render json: @orders
    else
      redirect_to root_path
    end
  end
end
