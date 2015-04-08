Feature: view job list

	As a worker
	So that I can find a job
	I want to be able to see job postings

Scenario: view job list
	When I am on the worker home page
	And I follow "View available jobs"
	Then I should see a list of jobs
	And I follow a job posting
	Then I should be on the job page
