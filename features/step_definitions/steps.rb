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
=begin
  users_table.hashes.each do |user|
    visit path_to(:signup)
    fill_in(:password, :with => user['authentication'])
    fill_in(:password_confirmation, :with => user['authentication'])
    fill_in(:email, :with => user['email'])
    click_button("sign up")
    click_button("log out")
    visit path_to(:index)
  end
=end
  pending
end

Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When(/^I fill (.*) with '(.*)'$/) do |field, value|
  fill_in(field, :with => value)
  #pending
end

When(/^I press "(.*?)"$/) do |button|
  click_button(button)
  #pending
end

When(/^I follow "(.*?)"$/) do |link|
  click_link(link)
  #pending
end

Then(/^I should see "(.*?)"$/) do |content|
  puts page.body
  assert page.body.include? content
  #pending
end

Then(/^I should be on the employer home page$/) do
  assert page.body.include? "Employer Home Page"
  #pending
end

Then(/^I should be on the worker home page$/) do
  assert page.body.include? "Worker Home Page"
  #pending
end

Then(/^I should be on the login page$/) do
  assert not(page.body.contains? "Index")
  assert not(page.body.contains? "Home Page")
  #pending
end
