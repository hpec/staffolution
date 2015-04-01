Feature: create a staffolution account as a worker

	As a worker
	So that I can find jobs
	I want to be able to create an account

Scenario: create worker account
	When I am on the home page
	And I follow "Find a job"
    Then I should see "Username"
	And I fill user_username with 'joesbro'
	And I fill user_email with 'alphalambda@hotmail.com'
	And I fill user_password_confirmation with '87654321'
	And I fill user_password with '87654321'
	And I press "Sign Up"
	And I should see "Employee Profile"
