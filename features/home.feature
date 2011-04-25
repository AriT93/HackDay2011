Feature: Navigation to the home page, logging in and logging out

  So that I can use the applcation
  As a user
  I need to be able to browse the applcation and login and logout

  Scenario: Main Page
    Given I am on the home page
    When I go to the home page
    Then I should see "Login"


  Scenario: Login
    Given I am on the home page
    And I should see "Login"
    And I fill in "test@example.org" for "email"
    And I fill in "password" for "password"
    When I press "Login"
    Then I should see "Main Page"

  Scenario: Logout
    Given I am on the home page
    When I follow "Logout"
    Then I should see "Logout successful"
