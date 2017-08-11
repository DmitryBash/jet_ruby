class DashboardsController < ApplicationController
  authorize_resource class: false

  def show
    @week_days = WeekDay.all.order(id: 'ASC')
  end
end
