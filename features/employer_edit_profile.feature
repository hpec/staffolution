Feature: edit an employer profile

	As an employer
	So that I keep my information up to date
	I want to be able to edit my profile

Background: the employer's profile already exists

	Given that the following employer profile exists:

	|ID|name				  |type			 |location|
	|1 |Dr. Paul Smiles Office|Dentist Office|Berkeley|

Scenario: edit employer profile
	When I am on the employer home page
	And I follow "Edit my profile"
	And I fill in location with 'San Francisco'
	And I press "Post profile"
	Then I should be on my profile page
	And I should see 'San Francisco'
	And I should not see 'Berkeley'
