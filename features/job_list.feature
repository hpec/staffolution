Feature: view job list

	As a worker
	So that I can find a job
	I want to be able to see job postings

Background: the worker's profile already exists

	Given that the following Users exist:

	|ID|Username|Authentication|Type|Email	|
	|1 |joeshmoe|12345678      |W   |a@b.com|

Scenario: view job list
	When I am on the login page
	And I fill user_login with 'joeshmoe'
	And I fill user_password with '12345678'
	And I press "Login"
	And I create test employee 1
	And I follow "Staffolution"
	And I follow "View jobs"
	Then I should see "Listing jobs"
