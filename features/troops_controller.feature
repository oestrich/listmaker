Feature: Troop controller
  As a user
  I want to look at the troops
  So that I can manage troops

  Background:
    Given The following Troop Types exist:
      | name | percentage |
      | Lord | 25         |
      | Core | 50         |
    Given I am on the home page

  Scenario: I want to add a troop
    When I follow "Add Troop"
    And  I fill in "Name" with "Orc Warboss"
    And  I fill in "Base Points" with "75"
    And  I fill in "Count" with "1"
    And  I select "single" from "Point Type"
    And  I select "Lord" from "Troop Type"
    And  I press "Add Troop"
    Then I should see "Successfully added 'Orc Warboss'"

  Scenario: I want to edit a troop
    Given the following Troops exist:
      | name        | base_points | count | troop_type | point_type_id |
      | Goblin      | 3           | 20    | Core       | 1             |
    And   I am on the home page
    When  I follow "Goblin"
    And   I fill in "50" for "Count"
    And   I select "group" from "Point Type"
    And   I press "Update Goblin"
    Then  I should see "Successfully updated 'Goblin'"
    And   I should see "50 Goblin" within "#troop-type-core"
    And   I should see "3 pts/per" within "#troop-type-core"

  Scenario: I want to destroy a troop
    Given the following Troops exist:
      | name        | base_points | count | troop_type | point_type_id |
      | Goblin      | 3           | 20    | Core       | 1             |
    And   I am on the home page
    When  I press "Delete" within "#troop-type-core"
    Then  I should see "Successfully deleted 'Goblin'"
