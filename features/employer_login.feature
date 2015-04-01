Feature: login to staffolution as an employer

	As an employer
	So that I can find workers
	I want to be able to login to my account

Background: some users already exist

	Given that the following Users exist:

	|ID|Username|Authentication|Type|Email	|
	|1 |joeshmoe|12345678      |W   |a@b.com|
	|2 |fatcat  |77777777      |E   |b@c.com|

Scenario: log in to employer account
	When I am on the login page
	And I fill user_login with 'fatcat'
	And I fill user_password with '77777777'
	And I press "Login"
	And I should see "Employer Profile"
