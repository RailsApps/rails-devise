Feature: Home Page
  As a visitor
  I want to visit a home page
  So I can learn more about the website

    Scenario: Visit the Home Page
      Given I am a visitor
      When I visit the home page
      Then I should see "Home"
