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
    Then I should see a hotel option with name "Villa Arqueológica de Teotihuacán"
    And I click the option "Villa Arqueológica de Teotihuacán"
    And I should see more information displayed like "Location"

@numbers
  Scenario: show hotels available numbers
    When I enter "Chechen Republic" at search bar
    And Press the "Search" button
    Then I should see the quantity of hotels at the top of the list
    And I should see the same quantity of hotels at the list

@reviews
  Scenario: Look reviews from hotel
    When I enter "New York" at search bar
    And Press the "Search" button
    And I click the hotel option "Hotel 32 32"
    Then I click the "Reviews" tab
    And I should see the rating of certain specifications

@3stars
Scenario: Look reviews from hotel
  When I enter "New York" at search bar
  And Press the "Search" button
  And Select the 3 stars filter
  Then I should see hotels with three stars at the first tab
