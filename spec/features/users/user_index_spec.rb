require 'spec_helper'
include Warden::Test::Helpers
Warden.test_mode!

# Feature: User index page
#   As a user
#   I want to see a list of users
#   So I can confirm the site has multiple users
feature 'User index page' do

  # Scenario: User listed on index page
  #   Given I am logged in
  #   When I visit the user index page
  #   Then I see my own email address
  scenario 'user sees own email address' do
    user = FactoryGirl.create(:user)
    login_as(user, scope: :user)
    visit users_path
    expect(page).to have_content user.email
  end

end
