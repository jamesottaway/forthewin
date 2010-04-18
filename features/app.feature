Feature: App
  In order to allow railscampers to evaluate apps
  As a person with a unique IP
  I want to submit, vote and comment on apps

  Scenario: Allow user to submit app
    Given I am on the homepage
    When I follow "Submit App"
    And I fill in "Title" with "Bananajour"
    And I fill in "Author" with "Tim"
    And I fill in "Link to Demo" with "http://sup/"
    And I fill in "Link to Source" with "http://computer:9331/forthewin.git"
    And I fill in "Description" with "Why hello there"
    And I press "Submit"
    Then I should see "App submitted successfully"
    And I should see "Bananajour"
    And I should see "http://computer:9331/forthewin.git"

  Scenario: Allow user to comment on application
    Given I have an existing app
    And I have gone to the "Bananajour" app page
    And I fill in "New Comment" with "So hot! Want to touch the hiney..."
    And I press "Add Comment"
    Then I should see "Thanks for the comment"
    And I should see "So hot! Want to touch the hiney..."
  
  Scenario: Allow user to delete one of their comments
    Given I have an existing comment
    And I have gone to the "Bananajour" app page
    When I press "Delete Comment"
    Then I should see "Your comment has been deleted."
    And I should not see "Fuck this shit."
  
  Scenario: Allow user to vote on an application
    Given I have an existing app
    And I have gone to the "Bananajour" app page
    When I press "Vote Up"
    Then I should see "Thanks for voting!"
    
  Scenario: Stop a user from voting twice on one app
    Given I have an existing app
    And I have voted on an existing application
    And I have gone to the "Bananajour" app page
    When I press "Vote Up"
    Then I should see "Sorry! You have already voted."