Feature: create a staffolution account as an employer

	As an employer
	So that I can find workers
	I want to be able to create an account

Scenario: create employer account
	When I am on the home page
	And I follow "Post a job"
        And I should see "Hello World"
        And I fill Username with 'ratpack'
	And I fill Password with '44444444'
	And I fill user_password_confirmation with '44444444'
        And I fill user_email with 'abc.123@gmail.com'
	And I press "Sign Up"
	Then I should be on the employer home page
