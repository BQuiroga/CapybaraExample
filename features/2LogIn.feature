Feature: Log in
    In order to get access to page
    As a client
    I want to log in into Trivago platform

Scenario: Enter Trivago log in page
    Given I am on trivago homepage
    When Press the "My profile" button
    And Press the button "Log in" in homepage
    Then I should see the page for logging in into Trivago
    
Scenario: Try logging in with all fields empty
    Given I am on trivago login page
    When Press the "Log in" button in login page
    Then I should see an "alert" message "Both email address and password are required to proceed"