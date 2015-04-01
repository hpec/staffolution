Feature: create a staffolution account as an employer

	As an employer
	So that I can find workers
	I want to be able to create an account

Scenario: create employer account
	When I am on the home page
	And I follow "Post a job"
    Then I should see "Username"
        And I fill user_username with 'ratpack'
        And I fill user_email with 'abc.123@gmail.com'
	And I fill user_password with '44444444'
	And I fill user_password_confirmation with '44444444'
	And I press "Sign Up"
	And I should see "Employer Profile"
