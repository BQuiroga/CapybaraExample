
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

When(/^I enter "([^"]*)"$/) do |searchPlace|
  fill_in 'sQuery', :with => searchPlace
end

Then(/^I should see a hotel option like "([^"]*)"$/) do |fullName|
  find(:xpath,'//*[@id="js_item_488971"]/div[3]/div/div[1]/h3',:text =>fullName)
  # expect(find_field('sQuery').value).to eq fullName
end
