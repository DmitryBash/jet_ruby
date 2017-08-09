class DashboardsController < ApplicationController
  def show
    @week_days = WeekDay.all
  end
end
