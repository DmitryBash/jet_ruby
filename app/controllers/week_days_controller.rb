class WeekDaysController < ApplicationController
  authorize_resource

  def show
    @week_day = WeekDay.find(params[:id])
    @products = Product.where(today_date: @week_day.today_date).group_by(&:category)
  end

  def create
  end
end
