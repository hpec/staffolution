Feature: edit an employer profile

	As an employer
	So that I keep my information up to date
	I want to be able to edit my profile

Background: the employer's profile already exists

	Given that the following Users exist:

	|ID|Username|Authentication|Type|Email	|
	|1 |joeshmoe|12345678      |W   |a@b.com|

Scenario: edit employer profile
	When I am on the login page
	And I fill user_login with 'joeshmoe'
	And I fill user_password with '12345678'
	And I press "Login"
	And I create test employer 1
	And I follow "Edit"
	And I should see "Personal Info"
	And I fill City with 'Palo Alto'
	And I press "Update Employee"
	Then I should see 'Palo Alto'
	Then I should not see 'UC Berkeley'
