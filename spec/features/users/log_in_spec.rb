require 'spec_helper'

# Feature: Log in
#   As a user
#   I want to log in
#   So I can visit protected areas of the site
feature 'Log in' do

  # Scenario: User cannot log in if not registered
  #   Given I do not exist as a user
  #   When I log in with valid credentials
  #   Then I see an invalid login message
  scenario 'user cannot log in if not registered' do
    login('test@example.com', 'please123')
    expect(page).to have_content 'Invalid email or password.'
  end

  # Scenario: User can log in with valid credentials
  #   Given I exist as a user
  #   And I am not logged in
  #   When I sign in with valid credentials
  #   Then I see a successful login message
  scenario 'user can log in with valid credentials' do
    user = FactoryGirl.create(:user)
    login(user.email, user.password)
    expect(page).to have_content 'Signed in successfully.'
  end

  # Scenario: User cannot log in with wrong email
  #   Given I exist as a user
  #   And I am not logged in
  #   When I log in with a wrong email
  #   Then I see an invalid login message
  scenario 'user cannot log in with wrong email' do
    user = FactoryGirl.create(:user)
    login('invalid@email.com', user.password)
    expect(page).to have_content 'Invalid email or password.'
  end

  # Scenario: User cannot log in with wrong password
  #   Given I exist as a user
  #   And I am not logged in
  #   When I log in with a wrong password
  #   Then I see an invalid login message
  scenario 'user cannot log in with wrong password' do
    user = FactoryGirl.create(:user)
    login(user.email, 'invalidpass')
    expect(page).to have_content 'Invalid email or password.'
  end

end
