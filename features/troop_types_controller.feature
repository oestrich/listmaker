Feature: Troop Types controller
  As a user
  I want to look at the troop types
  So that I can manage troop types

  Background:
    Given the following Troop Types exist:
      | name |
      | Lord |
      | Core |
    Given the following Troops exist:
      | name        | base_points | count | troop_type | point_type_id |
      | Orc Warboss | 75          | 1     | Lord       | 0             |
    And   I am on the home page

  Scenario: New troop type
    When I follow "Add Troop Type"
    And  I fill in "Name" with "Lords"
    And  I fill in "Min Percentage" with "0"
    And  I fill in "Max Percentage" with "25"
    And  I press "Add Troop Type"
    Then I should see "Successfully added 'Lords' troop type"

  Scenario: Edit troop type
    When I follow "Edit" within "#troop-type-lord"
    And  I fill in "Name" with "Special"
    And  I press "Update Lord"
    Then I should see "Special" within "#troop-type-special"

  Scenario: Destroy troop types
    When I follow "X" within "#troop-type-lord"
    Then I should see "Successfully deleted 'Lord' troop type"
    And  there should be no troops with troop type "Lord"
