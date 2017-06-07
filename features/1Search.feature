Feature: Search in Trivago
  In order to look for hotels
  As a visitor
  I want to use Trivago search tool
Background:
  Given I am on trivago homepage
@maximize
Scenario: Search blank
  When I enter blank data for hotels
  And Press the "Search" button
  Then I should see a list with many hotel options
  And should see a date selection displayed

@maximize
  Scenario: Search Teotihuacan
    When I enter "Teotihucan" at search bar
    And Press the "Search" button
    Then I should see a hotel option like "Teotihuacan de Arista"

@maximize
  Scenario: Display more information
    When I enter "Teotihucan" at search bar
    And Press the "Search" button
    Then I should see a hotel option like "Villa Arqueológica de Teotihuacán"
    When I click the option "Villa Arqueológica de Teotihuacán"
    Then I should see more information displayed like "Location"
