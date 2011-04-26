Feature: Navigation to the home page, logging in and logging out

  So that I can use the applcation
  As a user
  I need to be able to browse the applcation and login and logout

  Scenario: Main Page
    Given I am on the home page
    When I go to the home page
    Then I should see "Login"


  Scenario: Login as unknown
    Given I am on the home page
    And I should see "Login"
    And I fill in "test@example.org" for "email"
    And I fill in "password" for "password"
    When I press "Login"
    Then I should see "incorrect"

  Scenario: Go To Signup
    Given I am on the home page
    And I follow "Sign up"
    Then I should see "Sign Up"

  Scenario: Sign up
    Given I am on the signup page
    And I fill in "test@example.org" for "user_email"
    And I fill in "password" for "user_password"
    And I fill in "password" for "user_password_confirmation"
    And I press "Sign up"
    Then I should see "Main Page"

  Scenario: Logout
    Given I am on the home page
    When I follow "Logout"
    Then I should see "Logout successful"
