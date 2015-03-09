Feature: login to staffolution as an employer

	As an employer
	So that I can find workers
	I want to be able to login to my account

Background: some users already exist

	Given that the following Users exist:

	|ID|Username|Authentication|Type|
	|1 |joeshmoe|1234567       |W   |
	|2 |fatcat  |7777777       |E   |

Scenario: log in to employer account
	When I am on the log in page
	And I fill username with fatcat
	And I fill authentication with 7777777
	And I click "log in"
	Then I should be on the employer home page
