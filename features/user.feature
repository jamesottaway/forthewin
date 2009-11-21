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
    
  Scenario: Allow a user to login
    Given I have an existing user
    And I am on the homepage
    When I follow "Login"
    And I fill in "Username" with "ltw_"
    And I fill in "Password" with "password"
    And I press "Login"
    Then I should see "Hi, ltw_"
  
  Scenario: Allow a user to edit their settings
  
  Scenario: Allow a user to sign in with twetter

  
  
  
