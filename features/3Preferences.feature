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
