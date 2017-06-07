Given(/^Click on languages options$/) do
  find(:xpath, '//*[@id="js_navigation"]/div/div[3]/button/span', :text => 'EN').click
end

Then(/^I can see how may of the links have changed into Spanish$/) do
  have_content ('hotel')
  find(:xpath,'//*[@id="js_navigation"]/div/div[3]/button/span', :text => 'ES')
  find(:xpath,'//*[@id="js_navigation"]/div/div[4]/button/span', :text => 'Mi perfil')
  have_content ('Mi perfil')
  have_content ('Términos de uso')
  have_content ('Ayuda')
  have_content ('Mapa del sitio')
end

When(/^Press the "([^"]*)" link$/) do |linkName|
  find('a', :text => linkName ).click
end
