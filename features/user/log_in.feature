Feature: Log in
  As a user
  I want to log in
  So I can get access to protected sections of the site

    Scenario: User is not signed up
      Given I am not a user
      When I log in with valid credentials
      Then I see an invalid login message
      And I should be logged out

    Scenario: User logs in successfully
      Given I am a user
      And I am not logged in
      When I log in with valid credentials
      Then I see a successful login message
      When I return to the site
      Then I should be logged in

    Scenario: User enters wrong email
      Given I am a user
      And I am not logged in
      When I log in with a wrong email
      Then I see an invalid login message
      And I should be logged out

    Scenario: User enters wrong password
      Given I am a user
      And I am not logged in
      When I log in with a wrong password
      Then I see an invalid login message
      And I should be logged out


