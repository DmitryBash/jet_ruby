require 'rails_helper'

describe Order, type: :model do
  it { should belong_to(:profile) }
  it { should have_many(:order_products) }
  it { should have_many(:products).through(:order_products) }

  it { should validate_presence_of :full_name }
  it { should validate_presence_of :order_date }
  it { should validate_presence_of :email }
  it { should validate_presence_of :phone }
  it { should validate_presence_of :order_sum }

end
