Feature: create an employer profile

	As an employer
	So that I can appeal to workers
	I want to be able to create a profile with my details

Background: some users already exist

	Given that the following Users exist:

	|ID|Username|Authentication|Type|Email	|
	|1 |joeshmoe|12345678      |E   |a@b.com|

Scenario: create worker profile
	When I am on the login page
	And I fill user_login with 'joeshmoe'
	And I fill user_password with '12345678'
	And I press "Login"
	And I fill employer_name with 'Joe's repair'
	And I fill employer_phone with '1234567890'
	And I fill Website with 'http://www.joe.com/'
	And I fill Email with 'joerepair@b.com'
	And I fill Address line 1 with '123 Road St'
	And I fill City with 'Berkeley'
	And I fill State with 'CA'
	And I fill Zipcode with '94720'
	And I fill Office type with 'repair'
	And I press "Create Employer"
	Then I should see "Employer"
	And I should see 'Joe's repair'
	And I should see '1234567890'
	And I should see 'http://www.joe.com/'
	And I should see 'joerepair@b.com'
	And I should see '123 Road St'
	And I should see 'Berkeley'
	And I should see 'CA'
	And I should see '94720'
	And I should see 'repair'
