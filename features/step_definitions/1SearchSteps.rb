
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

Then(/^I should see the quantity of hotels at the top of the list$/) do
  have_content("out of (d+) hotels")
end

Then(/^I should see the same quantity of hotels at the list$/) do
  sleep(4)
  list=find('ol',:id=>'js_itemlist').all('li')
  have_content list.size.to_s + ' hotels'
end

When(/^I click the hotel option "([^"]*)"$/) do |option|
  find('h3',:text=>option).click
end

Then(/^I click the "([^"]*)" tab$/) do |tabName|
  find('button', :text => tabName ).click
end

Then(/^I should see the rating of certain specifications$/) do
  find('div',{:class=>'rat-index__number'})
end

When(/^Select the (\d+) stars filter$/) do |arg1|
  find(:xpath, '//*[@id="js-fullscreen-hero"]/div/form/div[1]/div[3]/div/div[1]').click
  find(:xpath,'//*[@id="fg_stars"]/div/button[3]').click
  sleep(5)
end

Then(/^I should see hotels with three stars at the first tab$/) do
  find('li span',{:class=>'item__star', :match => :first, :count => 3})
end
