Feature: User signs in
  In order to make use of the system
  A registered user
  wants to be able to sign in

  Scenario: User signs in from the home page
    Given a user called "Sapient" exists
    And I am on the homepage
    When I fill in the following:
      | Username | Sapient |
      | Password | password |
    And I press "Sign in"
    Then I should see "Welcome Sapient"

  Scenario: User is given a second chance when they sign in with the wrong credentials
    Given a user called "Sapient" exists
    And I am on the homepage
    When I fill in the following:
      | Username | Sapient |
      | Password | wrongpass |
    And I press "Sign in"
    Then I should see "Invalid username or password"
    And I should be on the login page
    When I fill in the following:
      | Username | Sapient |
      | Password | password |
    And I press "Sign in"
    Then I should be on the home page
    And I should see "Welcome Sapient"

  Scenario: User logs out of the system
    Given a user called "Sapient" exists
    And "Sapient" is logged in
    And I am on the home page
    When I follow "Log out"
    Then I should be on the home page
    And I should see "You have been logged out"
