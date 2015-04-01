require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

module WithinHelpers
  def with_scope(locator)
    locator ? within(*selector_for(locator)) { yield } : yield
  end
end
World(WithinHelpers)

Given(/^that the following Users exist:$/) do |users_table|
  # table is a Cucumber::Ast::Table
#=begin
  users_table.hashes.each do |user|
    if user['Type']=="W"
      visit path_to("the worker signup page")
    else
      visit path_to("the employer signup page")
    end
    fill_in(:user_username, :with => user['Username'])
    fill_in(:user_password, :with => user['Authentication'])
    fill_in(:user_password_confirmation, :with => user['Authentication'])
    fill_in(:user_email, :with => user['Email'])
    click_button("Sign Up")
    click_link("Account")
    click_link("Sign Out")
  end
end

Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When(/^I fill (.*) with '(.*)'$/) do |field, value|
  fill_in(field, :with => value)
end

When(/^I press "(.*?)"$/) do |button|
  click_button(button)
end

When(/^I follow "(.*?)"$/) do |link|
  click_link(link)
end

When(/^I create test employee 1$/) do
  fill_in('employee_employee_first_name', :with=> 'Joe')
  fill_in('employee_employee_last_name', :with=> 'shmoe')
  fill_in('employee_employee_phone', :with=> '1234567890')
  fill_in('employee_employee_school', :with=> 'UC Berkeley')
  fill_in('employee_employee_experience_years', :with=> '1')
  fill_in('employee_employee_experience_months', :with=> '9')
  fill_in('employee_employee_lic_number', :with=> '1234ABCD')
  fill_in('employee_employee_qualifications', :with=> 'fantastic hair')
  fill_in('employee_employee_languages', :with=> 'English, Spanish, Pig Latin')
  fill_in('employee_employee_description', :with=> 'pls hire me I need $')
  fill_in('employee_employee_zipcode', :with=> '94720')
  click_button("Submit")
  assert page.body.include? "successfully created"
end

When(/^I create test employer 1$/) do
  fill_in('employer_name', :with=> "Joe's repair")
  fill_in('employer_phone', :with=> '1234567890')
  fill_in('Website', :with=> 'http://www.joe.com/')
  fill_in('Email', :with=> 'joerepair@b.com')
  fill_in('Address line 1', :with=> '123 Road St')
  fill_in('City', :with=> 'Berkeley')
  fill_in('State', :with=> 'CA')
  fill_in('Zipcode', :with=> '94720')
  fill_in('Office type', :with=> 'repair')
  click_button("Create Employer")
  assert page.body.include? "successfully created"
end


Then(/^I should see "(.*?)"$/) do |content|
  assert page.body.include? content
end

Then(/^I should see '(.*?)'$/) do |content|
  assert page.body.include? content
end

Then(/^I should view test employee 1$/) do
  assert page.body.include? 'Joe'
  assert page.body.include? 'shmoe'
  assert page.body.include? '1234567890'
  assert page.body.include? 'UC Berkeley'
  assert page.body.include? '1'
  assert page.body.include? '9'
  assert page.body.include? '1234ABCD'
  assert page.body.include? 'fantastic hair'
  assert page.body.include? 'English, Spanish, Pig Latin'
  assert page.body.include? 'pls hire me I need $'
  assert page.body.include? '94720'
end

Then(/^I should view test employer 1$/) do
  assert page.body.include? "Joe's repair"
  assert page.body.include? '1234567890'
  assert page.body.include? 'http://www.joe.com/'
  assert page.body.include? 'joerepair@b.com'
  assert page.body.include? '123 Road St'
  assert page.body.include? 'Berkeley'
  assert page.body.include? 'CA'
  assert page.body.include? '94720'
  assert page.body.include? 'repair'
end

Then(/^Print page$/) do
  puts(page.body)
end

Then(/^I should not see '(.*?)'$/) do |content|
  assert not(page.body.include? content)
end

Then(/^I should not see "(.*?)"$/) do |content|
  assert not(page.body.include? content)
end

Then(/^I should be on the login page$/) do
  assert not(page.body.include? "Index")
  assert not(page.body.include? "Home Page")
end

Then(/^I should be on the (.*) page$/) do |page_title|
  assert page.body.downcase.include?(page_title), "Not on #{page_title} page!"
end
