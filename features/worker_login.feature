Feature: login to staffolution as a worker

	As a worker
	So that I can find jobs
	I want to be able to login to my account

Background: some users already exist

	Given that the following Users exist:

	|ID|Username|Authentication|Type|
	|1 |joeshmoe|1234567       |W   |
	|2 |fatcat  |7777777       |E   |

Scenario: log in to worker account
	When I am on the log in page
	And I fill username with joeshmoe
	And I fill authentication with 1234567
	And I click "log in"
	Then I should be on the worker home page
