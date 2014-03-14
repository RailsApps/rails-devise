Feature: User Profile
  As a user
  I want to see my user profile
  so I can see my account details

    Scenario: User views their account
      Given I am logged in
      When I visit my user profile page
      Then I should see my email address
