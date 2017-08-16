class DashboardsController < ApplicationController
  authorize_resource class: false

  def show
    this_week_days = Date.today.at_beginning_of_week..Date.today.at_end_of_week
    @week_days = WeekDay.where(today_date: this_week_days).order(id: 'ASC')
  end
end
