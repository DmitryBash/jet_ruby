FactoryGirl.define do
  factory :profile do
    user

    sequence :first_name do |n|
      "Dmitry#{n}"
    end

    sequence :last_name do |n|
      "Batracov#{n}"
    end
    birthdate Date.today
    phone '1234567'
    sex 'male'
  end

  factory :invalid_profile, class: Profile do
    first_name ''
    last_name ''
    birthdate
    phone ''
    sex
    user
  end
end
