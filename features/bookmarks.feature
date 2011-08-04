Feature: User uses the site for its intended purpose
  In order to keep users using the site
  The site owner
  Wants users to manage their bookmarks through this site

  Scenario: User adds a bookmark from the dashboard
    Given I am signed in
    And I fill in "Url" with "http://www.example.com"
    And I fill in "Description" with "Just a sample bookmark"
    When I press "Add bookmark"
    Then I should be on the home page
    And I should see "Bookmark added"
    And I should see "Just a sample bookmark"
