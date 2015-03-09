Feature: create a staffolution account as an employer

	As an employer
	So that I can find workers
	I want to be able to create an account

Scenario: create employer account
	When I am on the home page
	And I click "I want to fill a position"
	And I fill username with 'ratpack'
	And I fill authentication with '4444444'
	And I click "sign up"
	Then I should be on the employer home page