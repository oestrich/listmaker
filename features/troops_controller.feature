Feature: Troop controller
  As a user
  I want to look at the troops
  So that I can manage troops

  Background:
    Given The following Troop Types exist:
      | name | percentage |
      | Lord | 25         |
    Given I am on the home page

  Scenario: I want to add a troop
    When I follow "Add Troop"
    And  I fill in "Name" with "Orc Warboss"
    And  I fill in "Base Points" with "75"
    And  I select "single" from "Point Type"
    And  I select "Lord" from "Troop Type"
    And  I press "Add Troop"
    Then I should see "Successfully added 'Orc Warboss'"
