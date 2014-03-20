Feature: Log out
  As a user
  I want to log out
  So I can no longer access protected sections of the site

    Scenario: User logs out
      Given I am logged in
      When I log out
      Then I should see a logged out message
      When I return to the site
      Then I should be logged out
