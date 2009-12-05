Feature: App
  In order to allow users to evaluate apps
  As a user
  I want to submit, vote and comment on apps

  Scenario: Allow user to submit app
    Given I am logged in as a user
    And I am on the homepage
    When I follow "Submit App"
    And I fill in "Title" with "Bananajour"
    And I fill in "Author" with "Tim"
    And I fill in "Link to Demo" with "http://sup/"
    And I fill in "Link to Source" with "http://computer:9331/forthewin.git"
    And I fill in "Description" with "Why hello there"
    And I fill in "Sample Code" with "`@user = User.new`"
    And I press "Submit"
    Then I should see "App submitted successfully"
    And I should see "Bananajour"
    And I should see "http://computer:9331/forthewin.git"

  Scenario: Ask an anonymous user to log in when trying to submit an app
    Given I am on the homepage
    When I follow "Submit App"
    Then I should see "You must be logged in to access this page"

  Scenario: Allow user to comment on application
    Given I have an existing app
    And I am logged in as a user
    And I am on the homepage
    And I follow "Bananajour"
    And I fill in "New Comment" with "Fuck this shit"
    And I press "Add Comment"
    Then I should see "Thanks for the comment"
    And I should see "Fuck this shit"
  
  Scenario: Allow user to delete one of their comments
  
  Scenario: Allow user to vote on an application
    Given I have an existing app
    And I am logged in as a user
    And I am on the homepage
    When I follow "Bananajour"
    And I press "Vote Up"
    Then I should see "Thanks for voting!"