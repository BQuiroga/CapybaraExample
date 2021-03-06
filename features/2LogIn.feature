Feature: Log in
    In order to get access to page
    As a client
    I want to log in into Trivago platform

Background:
    Given I am on trivago login page

Scenario: Enter Trivago log in page
    Given I am on trivago homepage
    When Press the "My profile" button
    And Press the button "Log in" in homepage
    Then I should see the page for logging in into Trivago

Scenario: Try logging in with all fields empty
    When Press the "Log in" button in login page
    Then I should see an "alert" message "Both email address and password are required to proceed"

Scenario: Logging in with a valid account
    And I enter a correct user and password
    When Press the "Log in" button in login page
    Then I should see the dashboard for the logged account

Scenario: Logging in with a valid account and verify logging in at homepage
    And I enter a correct user and password
    When Press the "Log in" button in login page
    Then I should see the dashboard for the logged account
    And I visit the homepage
    And I can see my account on top-right of screen

Scenario: Trying to log in with invalid combination of user and password
  And I enter a incorrect password
  When Press the "Log in" button in login page
  Then I should see an "alert" message "Your email or password is incorrect."
  And I can see the user and password I put

@logout
Scenario: Veryfing log out
  And I enter a correct user and password
  When Press the "Login" button in login page
  And I click on side menu
  And Press the button "Log out" in homepage
  And I visit the homepage
  Then I should see "My profile" in homepage
