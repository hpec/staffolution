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

When(/^I am on the home page$/) do
  #visit path_to(:index)
  pending
end

When(/^I am on the log in page$/) do
  #visit path_to(:login)
  pending
end


When(/^I fill (.*) with '(.*)'$/) do |field, value|
  #fill_in(field, :with => value)
  pending
end

When(/^I press "(.*?)"$/) do |button|
  #click_button(button)
  pending
end

When(/^I follow "(.*?)"$/) do |link|
  #click_link(link)
  pending
end

Then(/^I should be on the employer home page$/) do
  #assert page.body.contains? "Employer Home Page"
  pending
end

Then(/^I should be on the worker home page$/) do
  #assert page.body.contains? "Worker Home Page"
  pending
end

Then(/^I should be on the login page$/) do
  #assert page.body.contains? "Login Page"
  pending
end
