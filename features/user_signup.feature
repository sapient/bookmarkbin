Feature: User signs up
  In order to increase the amount of users on the system
  The site owner
  wants users to be able to sign up

  Scenario: A user signs up
    When I go to the signup page
    And I fill in the following:
      | Username              | Sapient |
      | Password              | dragon  |
      | Password confirmation | dragon  |
    When I press "Create account"
    Then I should be on the homepage
    And I should see "Welcome Sapient"

  Scenario: Passwords must match
    When I go to the signup page
    And I fill in the following:
      | Username              | Sapient |
      | Password              | dragon  |
      | Password confirmation | dargon  |
    When I press "Create account"
    Then I should see "Password doesn't match confirmation"

  Scenario: Usernames cannot be duplicated
    Given a user called "Sapient" exists
    When I am on the signup page
    And I fill in the following:
      | Username              | Sapient |
      | Password              | dragon  |
      | Password confirmation | dragon  |
    When I press "Create account"
    Then I should see "That username is already taken"
