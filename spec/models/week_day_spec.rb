require 'rails_helper'

describe WeekDay, type: :model do
  it { should have_many(:products) }

  it { should validate_presence_of :day_name }
  it { should validate_presence_of :today_date }
end
