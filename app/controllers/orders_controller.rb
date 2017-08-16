class OrdersController < ApplicationController
  authorize_resource

  def create
    if CreateAndCalculateOrderSum.new(current_user, params).call
      flash[:success] = "Order created"
      redirect_to dashboard_path
    else
      flash[:error] = "Profile form should be fully completed"
      redirect_to profile_path(current_user.id)
    end
  end
end
