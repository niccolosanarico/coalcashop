#
# Step definitions for Coalcashop
#


Given(/^I visit the "(.*?)" page$/) do |pagename|
  visit "#{pagename}"
end

Given(/^I should see "(.*?)"$/) do |content|
  page.should have_content(content)
end

Given(/^I visit "(.*?)"$/) do |link|
  click_link("#{link}")
end

Given(/^I click on "(.*?)"$/) do |button|
  click_button button
end

Given(/^I am not logged in$/) do
  page.should have_content("Login")
end

Given(/^I complete "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in field, :with => value
end

Given(/^I follow "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
