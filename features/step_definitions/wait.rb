# For more information, please contact me
# Cao Hoai Viet, email: viet.ch2612@gmail.com
# or Appium ruby lib documents https://github.com/appium/ruby_lib/blob/master/docs/ios_docs.md

# Default wait, 30 seconds
And(/^I wait$/) do
  default_wait
end

# Wait for extract seconds
And(/^I wait for (\d+) seconds$/) do |time|
  set_wait time.to_i
end

# Wait for button visible
And(/^I wait for button "([^"]*)" appear$/) do |button_text|
  wait { text button_text}
end
