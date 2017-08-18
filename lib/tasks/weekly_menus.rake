namespace :weekly_menus do
  desc 'Weekly Menus create'
  task weekly_menus_create: :environment do
    WeekDay.create(day_name: 'Weekly Menus', today_date: Date.today, active: true)
  end

  desc 'Weekly Menus update'
    task weekly_menus_update: :environment do
    last_weekly_menus = WeekDay.where(day_name: 'Weekly Menus').last
    last_weekly_menus.update(today_date: Date.today, active: true)
  end
end
