require 'rails_helper'

feature 'Edit profile spec', '
  I want be able to sign in
  And to edit My profile page
' do

  given(:user) { create(:user) }
  given(:profile) { create(:profile) }

  scenario 'Sign in user go to edit profile' do
    sign_in(user)

    visit edit_profile_path(profile)
    #save_and_open_page
    expect(page).to have_content 'Back'
    fill_in 'First Name', with: 'Kek'
    click_on 'Update Profile'
    expect(page).to have_content 'Profile updated'
  end

  scenario "Unauthorized user can't see Edit page" do
    visit profile_path(profile)
    expect(page).to have_content 'You are not authorized to access this page.'
  end
end
