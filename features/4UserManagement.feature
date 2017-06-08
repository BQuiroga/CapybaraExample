Feature: User Management
    In order to manage user information and data
    As a user
    I want to modify my information and data and see that changes persist

Background:
    Given I am on trivago login page
    And I login with valid user and password

@maximize
Scenario: Changing name of user and see if changes persist
    When I click on side menu
    And I go to account settings on side menu
    And Press on "Personal information" header
    And Fill information with "Sergio" "Villarroel"
    And Save all changes
    Then I should see "Sergio" "Villarroel" on fields
