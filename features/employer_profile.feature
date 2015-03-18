Feature: create an employer profile

	As an employer
	So that I can appeal to workers
	I want to be able to create a profile with my details

Scenario: create employer profile
	When I am on the employer home page
	And I follow "Create a Profile"
	And I fill in company name with 'Dr. Paul Smiles Office'
	And I fill in business type with 'Dentist Office'
	And I fill in location with 'Berkeley'
	And I press "Post profile"
	Then I should be on my profile page
