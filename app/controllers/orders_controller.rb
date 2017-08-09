class OrdersController < ApplicationController
  def create
    CreateAndCalculateOrderSum.new(current_user, params).create_order
    redirect_to dashboard_path
  end
end
