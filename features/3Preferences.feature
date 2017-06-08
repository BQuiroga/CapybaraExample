Feature: Preferences
    In order change the way I see Trivago
    As a visitor
    I want to adapt Trivago's content to my specifications

Background:
  Given I am on the Trivago homepage

Scenario: Change language to Spanish
  And Click on languages options
  When Press the "ES – Español" link
  Then I can see how many of the links have changed into Spanish

Scenario: Change currency to Euro
  When Select "EUR" at currency options
  And I enter "Miami" at search bar
  And Press the "Search" button
  Then I should see a different currency on top bar
  And I should see the "‎€" symbol

Scenario: Change country to Colombia
  When Select "Colombia" at country options
  And I enter "Miami" at search bar
  And Press the "Buscar" button
  Then I should see a different country in footer
  And I can see how some of the links have changed into Spanish
  And I should see the "$" symbol
  And I should see "COP" as currency
