Feature: User
  In order to allow users to use the website
  As a user
  I want to add an app

  Scenario: Allow a user to register
    Given I am on the homepage
    When I follow "Register"
    And I fill in "Username" with "Thomas"
    And I fill in "Password" with "12345"
    And I fill in "Password Confirmation" with "12345"
    And I fill in "Email" with "thomas@icdesign.com.au"
    And I press "Register"
    Then I should see "Successfully Registered User"
    
  Scenario: If a user tries to register a previously registered user, show an error
    Given I have an existing user
    And I am on the homepage
    When I create a test user
    Then I should see "Username*has already been taken"
    And I should see "Email*has already been taken"
    
  Scenario: Allow a user to login
    Given I have an existing user
    And I am on the homepage
    When I follow "Login"
    And I fill in "Username" with "Thomas"
    And I fill in "Password" with "12345"
    And I press "Login"
    Then I should see "Hi, Thomas"
    
  Scenario: If a user enters incorrect password, user should see an error
    Given I have an existing user
    And I am on the homepage
    When I follow "Login"
    And I fill in "Username" with "Thomas"
    And I fill in "Password" with "54321"
    And I press "Login"
    Then I should see "Password*is not valid"
    
  Scenario: If a user enters incorrect username, user should see an error
    Given I have an existing user
    And I am on the homepage
    When I follow "Login"
    And I fill in "Username" with "Burngle"
    And I fill in "Password" with "12345"
    And I press "Login"
    Then I should see "Username*is not valid"
    