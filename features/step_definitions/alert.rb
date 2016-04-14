# For more information, please contact me
# Cao Hoai Viet, email: viet.ch2612@gmail.com
# or Appium ruby lib documents https://github.com/appium/ruby_lib/blob/master/docs/ios_docs.md

# Accept the alert
And(/^I accept the alert$/) do
  alert_accept
end

# Dismiss the alert
And(/^I dismiss the alert$/) do
  alert_dismiss
end

# See the alert
And(/^I should see the alert$/) do
  find_element :class_name, 'UIAAlert'
end

# Wait to see the alert
And(/^I should see the alert$/) do
  wait { find_element :class_name, 'UIAAlert' }
end

# Wait to see alert with text
And(/^I wait to see the alert with text "([^\"]*)"$/) do |message|
  wait { text '#{message}' }
end

