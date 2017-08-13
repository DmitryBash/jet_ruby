require 'rails_helper'

describe User, type: :model do
  it { should have_one(:profile) }

  it { should validate_presence_of :email }
  it { should validate_presence_of :password }

  describe 'after_create' do
    let(:user) { create(:user) }
    it 'run the create_in_remote callback' do
      expect(user).to receive(:create_profile)
      user.run_callbacks(:create)
    end
  end
end
