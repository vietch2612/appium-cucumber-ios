# For more information, please contact me
# Cao Hoai Viet, email: viet.ch2612@gmail.com
# or Appium ruby lib documents https://github.com/appium/ruby_lib/blob/master/docs/ios_docs.md

Given(/^I am on the Welcome Screen$/) do
  exists { button('Try as guest') } ? puts('true') : puts('false')
end
