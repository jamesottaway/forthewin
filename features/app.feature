Feature: App
  In order to allow users to evaluate apps
  As a user
  I want to submit, vote and comment on apps

  Scenario: Allow user to submit app
    Given I am on the homepage
    When I follow "Submit App"
    And I fill in "Title" with "Bananajour"
    And I fill in "Author" with "Tim"
    And I fill in "Link to Demo" with "http://sup/"
    And I fill in "Link to Source" with "http://computer:9331/forthewin.git"
    And I fill in "Description" with "Why hello there"
    And I fill in "Sample Code" with "`@user = User.new`"
    And I fill in "Contributors" with "James, Lucas"
    And I press "Submit"
    Then I should see "App submitted successfully"

  Scenario: Allow user to vote on application

  Scenario: Allow user to comment on application