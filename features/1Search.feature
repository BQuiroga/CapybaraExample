Feature: Search in Trivago
Scenario: Search blank
  Given I am on trivago homepage
  When I enter blank data for hotels
  And Press the "Search" button
  Then I should see a list with many hotel options


@maximize
  Scenario: Search Teotihuacan
    Given I am on trivago homepage
    When I enter "Teotihucan"
    And Press the "Search" button
    Then I should see a hotel option like "Villa Arqueológica de Teotihuacán"
