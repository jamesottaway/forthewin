Given /^I have an existing app$/ do
  App.make
end

Given /^I have voted on an existing application$/ do
  Given 'I have an existing app'
  And 'I am logged in as a user'
  And 'I am on the homepage'
  When 'I follow "Bananajour"'
  And 'I press "Vote Up"'
  Then 'I should see "Thanks for voting!"'
end

Given /^I have gone to the "([^\"]*)" app page$/ do |app|
  Given 'I am on the homepage'
  And %{I follow "#{app}"}
end