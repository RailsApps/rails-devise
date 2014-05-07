require 'spec_helper'

# Feature: Log out
#   As a user
#   I want to log out
#   So I can protect my account from unauthorized access
feature 'Log out' do

  # Scenario: User logs out successfully
  #   Given I am logged in
  #   When I log out
  #   Then I see a logged out message
  scenario 'user logs out successfully' do
    user = FactoryGirl.create(:user)
    login(user.email, user.password)
    expect(page).to have_content 'Signed in successfully.'
    click_link 'Logout'
    expect(page).to have_content 'Signed out successfully.'
  end

end


