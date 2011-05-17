Feature: Home controller
  As a user
  I want to look at the homepage
  So that I can use the site

  Scenario: Look at the index page
    Given I am on the homepage
    Then  I should see "Welcome"

  Scenario: I should see a link to add a troop type
    Given I am on the homepage
    When  I follow "Add Troop Type"
    Then  I should be on the troop types page
