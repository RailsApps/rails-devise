Feature: Navigation
  As a user
  I want to see navigation links
  So I can access all pages of the website

    Scenario: Visitor sees limited set of navigation links
      Given I am a visitor
      When I visit the home page
      Then I should see a link "Home"
      And I should see a link "Login"
      And I should see a link "Sign up"

    Scenario: User sees all navigation links
      Given I am logged in
      When I visit the home page
      Then I should see a link "Home"
      And I should see a link "Logout"
      And I should see a link "Edit account"
      And I should see a link "Users"
