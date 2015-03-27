Feature: edit a worker profile

	As a worker
	So that I keep my information up to date
	I want to be able to edit my profile

Background: the worker's profile already exists

	Given that the following Employers exists:

	|ID|name	   |education  |age|location|
	|1 |Joe Average|UC Berkeley|23 |Berkeley|

Scenario: edit employer profile
	When I am on the worker home page
	And I follow "Edit my profile"
	And I fill in location with 'San Francisco'
	And I press "Post profile"
	Then I should be on the worker profile edit page
	Then I should see 'San Francisco'
	Then I should not see 'Berkeley'
