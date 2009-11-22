Given /^I have an existing user$/ do
  Given 'I am on the homepage'
  When 'I follow "Register"'
  And 'I fill in "Username" with "Thomas"'
  And 'I fill in "Password" with "12345"'
  And 'I fill in "Password Confirmation" with "12345"'
  And 'I fill in "Email" with "thomas@icdesign.com.au"'
  And 'I press "Register"'
  Then 'I should see "Successfully Registered User"'
end

Given /^I am logged in as a user$/ do
  Given 'I have an existing user'
  And 'I am on the homepage'
  When 'I follow "Login"'
  And 'I fill in "Username" with "Thomas"'
  And 'I fill in "Password" with "12345"'
  And 'I press "Login"'
  Then 'I should see "Hi, Thomas"'
end
