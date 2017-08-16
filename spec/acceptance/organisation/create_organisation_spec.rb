require 'rails_helper'

feature 'Create organisation spec', '
  I want be able to sign in
  And to create Organisation
' do
  given(:user) { create(:user) }

  scenario 'Sign in user create organisation' do
    sign_in(user)

    visit new_organisation_path
    fill_in 'Organisation Name', with: 'Test'
    click_on 'Create Organisation'
    expect(page).to have_content 'Organisation Created'
  end

  scenario 'Unauthorized user should see fail message' do
    visit new_organisation_path
    expect(page).to have_content 'You are not authorized to access this page.'
  end
end
