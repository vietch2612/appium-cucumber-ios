# For more information, please contact me
# Cao Hoai Viet, email: viet.ch2612@gmail.com
# or Appium ruby lib documents https://github.com/appium/ruby_lib/blob/master/docs/ios_docs.md

Then(/^I go back$/) do
  back
end

# Find a button by index
And(/^I press the button number (\d+)$/) do |button_index|
  button(button_index.to_i).click
end

# Find a button by text
And(/^I press the "([^"]*)" button$/) do |button_text|
  button(button_text).click
end

#################
# For current project
Given(/^I toogle to accept agreement T&C$/) do
  button('ic_checkbox_inactive').click
end

And(/^I press the Sign up button$/) do
  button(5).click
end
