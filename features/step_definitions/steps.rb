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

Then(/^I should see "(.*?)"$/) do |content|
  assert page.body.include? content
end

Then(/^I should see '(.*?)'$/) do |content|
  assert page.body.include? content
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
