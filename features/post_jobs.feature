Feature: post a job

	As an employer
	So that I can find workers
	I want to be able to create and post jobs

Background: the employer's profile already exists

	Given that the following Employers exists:

	|ID|name				  |type			 |location|
	|1 |Dr. Paul Smiles Office|Dentist Office|Berkeley|

Scenario: post a job
	When I am on the employer home page
	And I follow "Post a Job"
	And I fill in a test job description
	Then I should be on the job page
	And I should see the job details
