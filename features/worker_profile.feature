Feature: create a worker profile

	As a worker
	So that I can appeal to employers
	I want to be able to create a profile with my details

Background: some users already exist

	Given that the following Users exist:

	|ID|Username|Authentication|Type|Email	|
	|1 |joeshmoe|12345678      |W   |a@b.com|

Scenario: create worker profile
	When I am on the login page
	And I fill user_login with 'joeshmoe'
	And I fill user_password with '12345678'
	And I press "Login"
	And I create test employee 1
	Then I should see "successfully created"
	And I should view test employee 1
