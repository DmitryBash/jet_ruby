Organisation.create(organisation_name: 'All Organisations', today_date: Date.today, today_menu_active: true)
Organisation.create(organisation_name: 'Default Organisations', today_date: Date.today, today_menu_active: false)

require 'sidekiq/api'
Sidekiq::RetrySet.new.clear
Sidekiq::ScheduledSet.new.clear
