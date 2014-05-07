require 'spec_helper'
include Warden::Test::Helpers
Warden.test_mode!

# Feature: User delete
#   As a user
#   I want to delete my user profile
#   So I can close my account
feature 'User delete', js: true do

  # Scenario: User can delete own account
  #   Given I am logged in
  #   When I delete my account
  #   Then I should see an account deleted message
  scenario 'user can delete own account', :slow do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit edit_user_registration_path(user)
    click_button 'Cancel my account'
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content 'Bye! Your account was successfully cancelled. We hope to see you again soon.'
  end

end




