Feature: Users List
  As a user
  I want to see a list of users
  so I can know if the site has users

    Scenario: View list of users
      Given I am a user
      When I visit the user index page
      Then I should see my email address
