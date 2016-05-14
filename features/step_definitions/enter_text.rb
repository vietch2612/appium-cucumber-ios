# For more information, please contact me
# Cao Hoai Viet, email: viet.ch2612@gmail.com
# or Appium ruby lib documents https://github.com/appium/ruby_lib/blob/master/docs/ios_docs.md

Given(/^I input "([^"]*)" into input field number (\d+)$/) do |text,index|
  textfield(index.to_i).type text
end

Given(/^I input random email to email text field$/) do
  o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
  email = (0...12).map { o[rand(o.length)] }.join
  email = email + "@gmail.com"
  textfield(1).type email
end
