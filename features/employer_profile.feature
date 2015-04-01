Feature: create an employer profile

	As an employer
	So that I can appeal to workers
	I want to be able to create a profile with my details

Background: some users already exist

	Given that the following Users exist:

	|ID|Username|Authentication|Type|Email	|
	|1 |joeshmoe|12345678      |E   |a@b.com|

Scenario: create worker profile
	When I am on the login page
	And I fill user_login with 'joeshmoe'
	And I fill user_password with '12345678'
	And I press "Login"
	And I create test employer 1
	Then I should see "Employer"
	And I should view test employer 1
