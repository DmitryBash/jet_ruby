namespace :week_day do
  desc 'Create or update Week day'
  task :week_day, [:action] => [:environment] do |t, args = false|
    def create_week_days(args)
      today_date = Date.today
      days_from_this_week = (today_date.at_beginning_of_week..today_date.at_end_of_week)
      days_from_this_week.map do |day|
        check_active(day, args)
      end
    end

    def check_active(day, action)
      result = day <= Date.today ? true : false
      if action[:action]
        WeekDay.create(day_name: day.strftime("%A"), today_date: day, active: result)
      else
        WeekDay.find_by(today_date: Date.today).update_attributes(active: true)
      end
    end

    create_week_days(args)
  end
end
