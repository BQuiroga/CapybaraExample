Feature: Search in Trivago
  In order to look for hotels
  As a visitor
  I want to use Trivago search tool

Scenario: Search blank
  Given I am on trivago homepage
  When I enter blank data for hotels
  And Press the "Search" button
  Then I should see a list with many hotel options #PODRIAS VERIFICAR EL TAMANO DE LA LISTA O VERIFICAR QUE  NO SE VISUALIZAN HOTELES (OTRO TEST)


@maximize
  Scenario: Search Teotihuacan
    Given I am on trivago homepage
    When I enter "Teotihucan" #DONDE?
    And Press the "Search" button
    Then I should see a hotel option like "Villa Arqueológica de Teotihuacán"
