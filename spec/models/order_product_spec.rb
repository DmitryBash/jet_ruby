require 'rails_helper'

describe OrderProduct, type: :model do
  it { should belong_to(:product) }
  it { should belong_to(:order) }
end
