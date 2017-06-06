Feature: Search in Trivago
  In order to look for hotels
  As a visitor
  I want to use Trivago search tool

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

@maximize
  Scenario: Display more information
    Given I am on trivago homepage
    When I enter "Teotihucan"
    And Press the "Search" button
    Then I should see a hotel option like "Villa Arqueológica de Teotihuacán"
    When I click the option "Villa Arqueológica de Teotihuacán"
    Then I should see more information displayed like "Location"
