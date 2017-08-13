FactoryGirl.define do
  factory :order do
    profile
    sequence :full_name do |n|
      "Dmitry Bash#{n}"
    end
    sequence :email do |n|
      "user#{n}@test.com"
    end
    order_date Date.today
    phone '12311'
    order_sum 100

    trait :with_products do
      after(:create) do |order|
        order.products << create(:product)
      end
    end
  end
end
