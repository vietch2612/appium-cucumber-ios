And(/^I press button (\d+)$/) do |button_index|
  # Find a button by index
  button(button_index.to_i).click
end

And(/^I press a button labelled "([^"]*)"/) do |button_text|
  # Find a button by text
  button(button_text).click
end

And(/^I accept Location Service permission$/) do
  alert_accept
end
