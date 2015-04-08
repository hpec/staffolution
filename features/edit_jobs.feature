Feature: edit a job

	As an employer
	So that I can keep my job information up to date
	I want to be able to edit job postings

Background: the employer's profile already exists

	Given that the following Employers exists:

	|ID|name				  |type			 |location|
	|1 |Dr. Paul Smiles Office|Dentist Office|Berkeley|

Scenario: edit a job
	When I am on the employer home page
	And I follow "Edit a Job"
	And I select a posted job
	Then I should be on the job page
	And I fill in new job details
	And I follow "Update"
	Then I should be on the job page
	And I should see the new job details
