Feature: Troop Options
  As a user
  I want to manage troop options
  So that I can properly show troop points

  Background:
    Given the following Troop Types exist:
      | name | max_percentage |
      | Lord | 25             |
      | Core | 50             |
    Given the following Troops exist:
      | name        | base_points | count | troop_type | point_type_id |
      | Orc Warboss | 75          | 1     | Lord       | 0             |
      | Orc Boys    | 4           | 10    | Core       | 1             |
    And   I am on the home page

  Scenario: I want to add an option
    When I follow "Add option" within "#troop-type-core"
    Then I should see "Adding an option for 'Orc Boys'"
    When I fill in "Name" with "Full Command"
    And  I fill in "Points" with "30"
    And  I select "single" from "Type"
    And  I press "Add Option"
    Then I should see "Successfully added 'Full Command' option to 'Orc Boys'"
    And  I should see "Full Command" within "#troop-type-core .options"
    And  I should see "30 pts" within "#troop-type-core .options"

  Scenario: I want to remove an option
    Given The following Options exist:
      | name   | points | type_id | troop_name  |
      | Shield | 10     | 0       | Orc Warboss |
    And   I am on the home page
    When  I follow "X" within "#orc-warboss"
    Then  "Orc Warboss" should have "0" options
    And   I should see "Successfully deleted 'Shield' option from 'Orc Warboss'"

  Scenario: I want to edit an option
    Given The following Options exist:
      | name   | points | type_id | troop_name  |
      | Shield | 10     | 0       | Orc Warboss |
    And   I am on the home page
    When  I follow "Shield" within "#orc-warboss"
    And   I fill in "Name" with "Magic shield"
    And   I select "group" from "Type"
    And   I press "Save Option"
    Then  I should see "Successfully updated 'Magic shield' option for 'Orc Warboss'"
    And   I should see "Magic shield" within "#orc-warboss"
