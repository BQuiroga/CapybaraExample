Given(/^I login with valid user and password$/) do
  fill_in 'emailLogin', :with => ENV['EMPTY_USER']
  fill_in 'login-pass', :with => ENV['PSW']
  find(:xpath, '//*[@id="authentication-login"]/div/section/div[3]/div/button/span[1]').click
end

When(/^I click on side menu$/) do
  find(:xpath, '/html/body/header/button').click
end

When(/^I go to account settings on side menu$/) do
  find(:xpath, '/html/body/div/aside/div/nav/ul/li[2]/a').click
end

When(/^Press on "([^"]*)" header$/) do |arg1|
  find(:xpath, '//*[@id="jsContent"]/div/details[1]').click
end

When(/^Fill information with "([^"]*)" "([^"]*)"$/) do |firstName, lastName|
  fill_in('input-text-firstName', :with => firstName)
  fill_in('input-text-lastName', :with => lastName)
end

When(/^Save all changes$/) do
  find(:xpath,"//*[@id='jsContent']/div/details[1]/div/form/div[14]/button").click
  sleep(10)
end

When(/^Visit homepage from settings$/) do
  find(:xpath,"/html/body/div/aside/div/a[1]").click
end

Then(/^I should see "([^"]*)" on top left screen$/) do |userName|
  have_content userName
  find(:xpath,'//*[@id="js_navigation"]/div/div[4]/button/span/span[1]/svg/path',:text => userName)
end

Then(/^I should see "([^"]*)" "([^"]*)" on fields$/) do |firstName, lastName|
  expect(page).to have_field('input-text-firstName', with: firstName)
  expect(page).to have_field('input-text-lastName', with: lastName)
end
