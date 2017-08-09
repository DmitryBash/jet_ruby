class WeekDaysController < ApplicationController
  def show
    @week_day = WeekDay.find(params[:id])
    @products = Product.where(today_date: @week_day.today_date)
  end

  def create
  end
end
