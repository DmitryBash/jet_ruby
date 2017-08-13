FactoryGirl.define do
  factory :week_day do
    sequence :day_name do |n|
      "day_name#{n}"
    end
    today_date Date.today
    active true
  end

  factory :active_false_week_day, class: WeekDay do
    sequence :day_name do |n|
      "day_name#{n}"
    end
    today_date Date.today
    active false
  end
end
