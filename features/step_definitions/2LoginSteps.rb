
When(/^Press the button "([^"]*)" in homepage$/) do |buttonName|
    find('a',:text => buttonName).click
end

Then(/^I should see the page for logging in into Trivago$/) do
    find(:xpath,'//*[@id="authentication-login"]/div/section/div[1]/div/h2', :text => 'Log in with a social network')
    find(:xpath,'//*[@id="authentication-login"]/div/section/div[3]/div/h2', :text => 'Log in with your email')
    find('input', :id => 'emailLogin')
    find('input', :id => 'login-pass')
end

Given(/^I am on trivago login page$/) do
    visit 'https://accounts.trivago.com/login#'
end

When(/^Press the "([^"]*)" button in login page$/) do |buttonName|
  find(:xpath, '//*[@id="authentication-login"]/div/section/div[3]/div/button/span[1]').click
end

Then(/^I should see an "([^"]*)" message "([^"]*)"$/) do |roleMessage, message|
    find(:xpath,'//*[@id="authentication-login"]/div/section/div[3]/div/div[2]' ,:text => message)
end

Given(/^I enter a correct user and password$/) do
  fill_in 'emailLogin', :with => ENV['USER']
  fill_in 'login-pass', :with => ENV['PSW']
end

Then(/^I should see the dashboard for the logged account$/) do
  find(:xpath, '/html/body/div/div/div/h1', {:class => 'fw-normal accounts__header', :text => 'My dashboard'})
end

Then(/^I visit the homepage$/) do
  visit 'http://trivago.com/en'
end

Then(/^I can see my account on top\-right of screen$/) do
  have_content ENV['USER']
end

Given(/^I enter a incorrect password$/) do
  fill_in 'emailLogin', :with => ENV['USER']
  fill_in 'login-pass', :with => 'incorrect'
end

Then(/^I can see the user and password I put$/) do
  expect(page).to have_field('emailLogin', with: ENV['USER'])
  expect(page).to have_field('login-pass', with: 'incorrect')

end
