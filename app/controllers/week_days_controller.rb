class WeekDaysController < ApplicationController
  authorize_resource

  def show
    @week_day = WeekDay.find(params[:id])
    if @week_day.day_name == 'Weekly Menus'
      @products = Product.where(week_day_id: @week_day,
                                organisation_id: Organisation.first).group_by(&:category)
    else
      @products = Product.where(today_date: @week_day.today_date,
                                organisation_id: current_user.profile.organisation_id).group_by(&:category)
    end
  end
end
