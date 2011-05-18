Feature: Home controller
  As a user
  I want to look at the homepage
  So that I can use the site

  Background:
    Given the following Troop Types exist:
      | name    | max_percentage |
      | Lord    | 25             |
      | Hero    | 25             |
      | Core    | 100            |
      | Special | 75             |
      | Rare    | 50             |
    And   I am on the home page

  Scenario: Look at the index page
    Then  I should see "Welcome"

  Scenario: I should see a link to add a troop type
    When  I follow "Add Troop Type"
    Then  I should be on the new troop type page

  Scenario: I should see troops in categories
    Then I should see "Lord"
    And  I should see "Hero"
    And  I should see "Core"
    And  I should see "Special"
    And  I should see "Rare"

  Scenario: I should see troops in categories
    Given the following Troops exist:
      | name        | base_points | count | troop_type | point_type_id |
      | Orc Warboss | 75          | 1     | Lord       | 0             |
    And   I am on the home page
    Then  I should see "Orc Warboss" within "#troop-type-lord"
    And   I should see "75 pts" within "#troop-type-lord"
    And   I should see "1" within "#troop-type-lord"

  Scenario: Group point type
    Given the following Troops exist:
      | name        | base_points | count | troop_type | point_type_id |
      | Orc Warboss | 75          | 1     | Lord       | 0             |
      | Orc Boys    | 4           | 10    | Core       | 1             |
    And   I am on the home page
    Then  I should see "Orc Boys" within "#troop-type-core"
    And   I should see "4 pts/per" within "#troop-type-core"
    And   I should see "10" within "#troop-type-core"
    And   I should not see "75 pts/per" within "#troop-type-lord"

  Scenario: I should see total points
    Given the following Troops exist:
      | name        | base_points | count | troop_type | point_type_id |
      | Orc Warboss | 75          | 1     | Lord       | 0             |
      | Goblin      | 3           | 20    | Core       | 1             |
      | Snotling    | 30          | 2     | Special    | 1             |
    And   I am on the home page
    Then  I should see "Total Points: 215"

  Scenario: Edit a troop
    Given the following Troops exist:
      | name        | base_points | count | troop_type | point_type_id |
      | Goblin      | 3           | 20    | Core       | 1             |
    And   I am on the home page
    When  I follow "Edit Goblin"
    Then  I should see "Editing Goblin"

