Feature: Troop Types controller
  As a user
  I want to look at the troop types
  So that I can manage troop types

  Background:
    Given I am on the troop types page

  Scenario: New troop type
    When I follow "New Troop Type"
    And  I fill in "Name" with "Lord"
    And  I fill in "Percentage" with "25"
    And  I press "Add Troop Type"
    Then I should see "Successfully added 'Lord' troop type"

