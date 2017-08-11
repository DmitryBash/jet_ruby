module Admin
  class AdminPanelController < Admin::ApplicationController
    authorize_resource class: false

    def index
      @week_day = WeekDay.find_by(today_date: Date.today)
    end
  end
end
