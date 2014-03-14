Feature: Edit User
  As a user
  I want to edit my user profile
  so I can change my email address

    Scenario: User edits their account
      Given I am logged in
      When I visit my user profile page
      And I change my email address
      Then I should see an account edited message
