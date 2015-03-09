Feature: create a staffolution account as an employer

	As an employer
	So that I can find workers
	I want to be able to create an account

Scenario: create employer account
	When I am on the home page
	And I follow "I want to fill a position"
	And I fill username with 'ratpack'
	And I fill password with '4444444'
	And I fill password_confirmation with '4444444'
        And I fill email with 'abc.123@gmail.com'
	And I press "Sign Up"
	Then I should be on the employer home page
