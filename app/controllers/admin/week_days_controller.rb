module Admin
  class WeekDaysController < Admin::ApplicationController
    authorize_resource

    def index
      @week_days = WeekDay.search(params[:day_name])
    end

    def show
      @week_day = WeekDay.find(params[:id])
      @orders = Order.where(order_date: @week_day.today_date)
    end
  end
end
