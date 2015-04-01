Feature: login to staffolution as a worker

	As a worker
	So that I can find jobs
	I want to be able to login to my account

Background: some users already exist

	Given that the following Users exist:

	|ID|Username|Authentication|Type|Email	|
	|1 |joeshmoe|12345678      |W   |a@b.com|
	|2 |fatcat  |77777777      |E   |b@c.com|

Scenario: log in to worker account
        When I am on the home page
        And I follow "Login"
	And I should be on the login page
	And I fill user_login with 'joeshmoe'
	And I fill user_password with '12345678'
	And I press "Login"
	And I should see "Employee Profile"
