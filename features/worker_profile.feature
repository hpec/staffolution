Feature: create a worker profile

	As a worker
	So that I can appeal to employers
	I want to be able to create a profile with my details

Scenario: create worker profile
	When I am on the worker home page
	And I follow "Create a Profile"
	And I fill in name with 'Joe Average'
	And I fill in education with 'UC Berkeley'
	And I fill in age with '23'
	And I fill in location with 'Berkeley'
	And I press "Post profile"
	Then I should be on the worker home page
