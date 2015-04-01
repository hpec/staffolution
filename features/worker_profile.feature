Feature: create a worker profile

	As a worker
	So that I can appeal to employers
	I want to be able to create a profile with my details

Background: some users already exist

	Given that the following Users exist:

	|ID|Username|Authentication|Type|Email	|
	|1 |joeshmoe|12345678      |W   |a@b.com|

Scenario: create worker profile
	When I am on the login page
	And I fill user_login with 'joeshmoe'
	And I fill user_password with '12345678'
	And I press "Login"
	And I fill employee_employee_first_name with 'Joe'
	And I fill employee_employee_last_name with 'shmoe'
	And I fill employee_employee_phone with '1234567890'
	And I fill employee_employee_school with 'UC Berkeley'
	And I fill employee_employee_experience_years with '1'
	And I fill employee_employee_experience_months with '9'
	And I fill employee_employee_lic_number with '1234ABCD'
	And I fill employee_employee_qualifications with 'fantastic hair'
	And I fill employee_employee_languages with 'English, Spanish, Pig Latin'
	And I fill employee_employee_description with 'pls hire me I need $'
	And I fill Address line 1 with '123 Road St'
	And I fill City with 'Berkeley'
	And I fill State with 'CA'
	And I fill Zipcode with '94720'
	And I press "Create Employee"
	Then I should see "Employee"
	And I should see 'Joe'
	And I should see 'shmoe'
	And I should see '1234567890'
	And I should see 'UC Berkeley'
	And I should see '1'
	And I should see '9'
	And I should see '1234ABCD'
	And I should see 'fantastic hair'
	And I should see 'English, Spanish, Pig Latin'
	And I should see 'pls hire me I need $'
	And I should see '123 Road St'
	And I should see 'Berkeley'
	And I should see 'CA'
	And I should see '94720'
