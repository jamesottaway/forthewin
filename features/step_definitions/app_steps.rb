Given /^I have an existing app$/ do
  App.make
end

Given /^I have voted on an existing application$/ do
  Given 'I have an existing app'
  And 'I am on the homepage'
  When 'I follow "Bananajour"'
  And 'I press "Vote Up"'
  Then 'I should see "Thanks for voting!"'
end

Given /^I have gone to the "([^\"]*)" app page$/ do |app|
  Given 'I am on the homepage'
  And %{I follow "#{app}"}
end

Given /^I have an existing comment$/ do
  Given 'I have an existing app'
  And 'I have gone to the "Bananajour" app page'
  And 'I fill in "comment_text" with "So hot! Want to touch the hiney..."'
  And 'I fill in "comment_username" with "Jason Dude"'
  And 'I press "Add Comment"'
  Then 'I should see "Thanks for the comment"'
  And 'I should see "So hot! Want to touch the hiney..."'
end

