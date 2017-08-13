FactoryGirl.define do
  factory :product do
    week_day
    sequence :name do |n|
      "name#{1}"
    end
    sequence :price do |n|
      "#{n}"
    end
    today_date Date.today
    category 'first_course'
  end
end
