Feature: Home controller
  As a user
  I want to look at the homepage
  So that I can use the site

  Background:
    Given The following Troop Types exist:
      | name    | percentage |
      | Lord    | 25         |
      | Hero    | 25         |
      | Core    | 50         |
      | Special | 75         |
      | Rare    | 50         |
    And   I am on the home page

  Scenario: Look at the index page
    Then  I should see "Welcome"

  Scenario: I should see a link to add a troop type
    When  I follow "Add Troop Type"
    Then  I should be on the troop types page

  Scenario: I should see troops in categories
    Then I should see "Lord"
    And  I should see "Hero"
    And  I should see "Core"
    And  I should see "Special"
    And  I should see "Rare"

  @wip
  Scenario: I should see troops in categories
    Given the following Troops exist:
      | name        | base_points | troop_type |
      | Orc Warboss | 75          | Lord       |
    And   I am on the home page
    Then  I should see "Orc Warboss" within "#troop-type-lord"
    And   I should see "75" within "#troop-type-lord"

