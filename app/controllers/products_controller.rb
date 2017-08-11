class ProductsController < ApplicationController
  before_action :set_week_day
  authorize_resource

  def new
    @product = Product.new
  end

  def create
    @product = @week_day.products.create(product_params)
    redirect_to @week_day
  end

  private

  def set_week_day
    @week_day = WeekDay.find(params[:week_day_id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :today_date, :week_day_id, :category)
  end
end
