# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

set :output, "#{Whenever.path}/log/cron.log"
set :environment, :development

every :monday, :at => '12:01 am' do
  rake "week_day:week_day[true]"
  rake "weekly_menus:weekly_menus_create"
end

every 1.day, at: '12:05 am' do
  rake "week_day:week_day"
end

every 1.day, at: '12:10 am' do
  rake "organisation:organisation_update"
  rake "weekly_menus:weekly_menus_update"
end

