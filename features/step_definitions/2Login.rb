
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
  click_button(buttonName, :prefer_exact)
end

Then(/^Then I should see an "([^"]*)" message "([^"]*)"$/) do |roleMessage, message|
    find('div', :role => roleMessage ,:text => message).click
end 