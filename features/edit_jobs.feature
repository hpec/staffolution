Feature: edit a job

	As an employer
	So that I can keep my job information up to date
	I want to be able to edit job postings

Background: the employer's profile already exists

	Given that the following Users exist:

	|ID|Username|Authentication|Type|Email	|
	|1 |joeshmoe|12345678      |E   |a@b.com|

Scenario: edit a job
	When I am on the login page
	And I fill user_login with 'joeshmoe'
	And I fill user_password with '12345678'
	And I press "Login"
	And I create test employer 1
	And I follow "Staffolution"
	And I follow "View jobs"
	And I follow "New Job"
	And I create test job 1
	Then I should see "$800/hr"
	And I follow "Edit"
	And I update compensation to "$700/hr"
	And I press "Post"
	Then I should see "$700/hr"
	And I should not see "$800/hr"
