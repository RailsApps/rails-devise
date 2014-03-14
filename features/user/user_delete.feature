Feature: Delete User
  As a user
  I want to delete my account
  So I can no longer access protected sections of the site

    Scenario: User deletes own account
      Given I am logged in
      When I visit my user profile page
      And I delete my account
      Then I should see an account deleted message

    Scenario: User cannot delete another account
      Given I am logged in
      And I try to delete another user's account
      Then I should see an access denied message
