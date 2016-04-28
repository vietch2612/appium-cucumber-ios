# For more information, please contact me
# Cao Hoai Viet, email: viet.ch2612@gmail.com
# or Appium ruby lib documents https://github.com/appium/ruby_lib/blob/master/docs/ios_docs.md

Given(/^I enter "([^"]*)" into input field number (\d+)$/) do |text,index|
  textfield(index.to_i - 1).type text
end
