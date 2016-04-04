And(/^I press button (\d+)$/) do |button_index|
  # Find a button by index
  button(button_index.to_i).click
end

And(/^I press a button labelled (\w+)$/) do |button_text|
  # Find a button by text
  button(button_text).click
end
