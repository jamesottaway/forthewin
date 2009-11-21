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
