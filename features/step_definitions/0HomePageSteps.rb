Given(/^I am on the Trivago homepage$/) do
  visit 'http://trivago.com/'
end
Then(/^I should see an input table "([^"]*)"$/) do |search|
  page.has_content?(search)
end
