Feature: create a staffolution account as a worker

	As a worker
	So that I can find jobs
	I want to be able to create an account

Scenario: create worker account
	When I am on the home page
	And I click "I want to find a job"
	And I fill username with 'joesbro'
	And I fill authentication with '7654321'
	And I click "sign up"
	Then I should be on the worker home page