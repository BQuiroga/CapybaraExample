
Given(/^I am on trivago homepage$/) do
  visit 'http://trivago.com/'
end

When(/^I enter blank data for hotels$/) do
  fill_in 'sQuery', :with => ""
  # //*[@id="js-fullscreen-hero"]/div/form/div[1]/div[2]/div/div[1]/input[3]
end

When(/^Press the "([^"]*)" button$/) do |buttonName|
  click_button(buttonName)
end

Then(/^I should see a list with many hotel options$/) do
  find(:xpath,'//*[@id="js_itemlist"]')
end

When(/^I enter "([^"]*)" at search bar$/) do |searchPlace|
  fill_in 'sQuery', :with => searchPlace
end

Then(/^I should see a hotel option like "([^"]*)"$/) do |fullName|
  find(:xpath,'//*[@id="js_item_488971"]/div[3]/div/div[2]/p',:text=>fullName)
  have_content(fullName)
end

When(/^I click the option "([^"]*)"$/) do |option|
  find(:xpath,'//*[@id="js_item_488971"]',:text=>option).click
end

Then(/^I should see more information displayed like "([^"]*)"$/) do |moreInfo|
  have_content(moreInfo)
end

Then(/^should see a date selection displayed$/) do
  find(:xpath, '//*[@id="js-fullscreen-hero"]/div/form/div[2]/div[2]/div/table', {:class => 'cal-month'})
end
Then(/^I should see a hotel option with name "([^"]*)"$/) do |hotelName|
  have_content(hotelName)

end
