Feature: create a staffolution account as a worker

	As a worker
	So that I can find jobs
	I want to be able to create an account

Scenario: create worker account
	When I am on the home page
	And I follow "Find a job"
        And I should see "Username"
	And I fill Username with 'joesbro'
        And I fill Password with 'alphalambda@hotmail.com'
	And I fill user_password_confirmation with '7654321'
	And I fill user_email with '7654321'
	And I press "Sign Up"
	Then I should be on the worker home page
