require 'rails_helper'

describe Profile, type: :model do
  it { should have_many(:orders) }
  it { should belong_to(:user) }
end
