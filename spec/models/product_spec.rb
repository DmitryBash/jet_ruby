require 'rails_helper'

describe Product, type: :model do
  it { should belong_to(:week_day) }
  it { should have_many(:order_products) }
  it { should have_many(:orders).through(:order_products) }

  it { should validate_presence_of :category }
  it { should validate_presence_of :name }
  it { should validate_presence_of :price }
  it { should validate_presence_of :today_date }
end
