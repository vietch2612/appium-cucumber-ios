Feature: Sign in feature
  This is Sign in feature
  Defined by Cao Hoai Viet

@reset_device_settings @test
Scenario: Empty email
  Given I accept the alert
  And I am on the Welcome Screen
  When I press the "Sign up now" button
  Then I should see "Connect by e-mail"
  Given I enter "12345678" into input field number 2
  When I press the "Sign up" button
  Then the title of the alert is "Invalid email address!"
  Then the message of the alert is "You must enter a valid email address."
  Then I can dismiss the alert with the OK button

@reset_device_settings
Scenario: Invalid email format
  Given I am on the Welcome Screen
  When I press the "Sign up now" button
  Then I should see "Connect by e-mail"
  Given I enter "invalidemailformat" into input field number 1
  When I press the "Sign up" button
  Then the title of the alert is "Invalid email address!"
  Then the message of the alert is "You must enter a valid email address."
  Then I can dismiss the alert with the OK button

@reset_device_settings
Scenario: Empty password
  When I press the "Sign up now" button
  Then I should see "Connect by e-mail"
  Given I input "random email" into input field number 1
  When I press the "Sign up" button
  Then the title of the alert is "Invalid password length!"
  Then the message of the alert is "Password must have at least 6 characters"
  Then I can dismiss the alert with the OK button

@reset_device_settings
Scenario: Short password
  When I press the "Sign up now" button
  Then I should see "Connect by e-mail"
  Given I input "random email" into input field number 1
  Given I enter "12345" into input field number 2
  When I press the "Sign up" button
  Then the title of the alert is "Invalid password length!"
  Then the message of the alert is "Password must have at least 6 characters"
  Then I can dismiss the alert with the OK button

@reset_device_settings
Scenario: Existed email
  When I press the "Sign up now" button
  Then I should see "Connect by e-mail"
  Given I input "existed email" into input field number 1
  Given I enter "12345678" into input field number 2
  When I press the "Sign up" button
  Given I toogle to accept agreement T&C
  When I press the "Let’s Go" button
  Then the title of the alert is "Error!"
  Then the message of the alert is "Username or Email existed"
  Then I can dismiss the alert with the OK button

@reset_device_settings
Scenario: Sign up successful with random email
  When I press the "Sign up now" button
  Then I should see "Connect by e-mail"
  Given I input "random email" into input field number 1
  Given I enter "12345678" into input field number 2
  When I press the "Sign up" button
  Given I toogle to accept agreement T&C
  When I press the "Let’s Go" button
  Then I should see Home screen

@reset_device_settings
Scenario: Space on password
  When I press the "Sign up now" button
  Then I should see "Connect by e-mail"
  Given I input "random email" into input field number 1
  Given I enter "1234 5678" into input field number 2
  Given I press the "Sign up" button
  Given I toogle to accept agreement T&C
  When I press the "Let’s Go" button
  Then I should see Home screen

@reset_device_settings
Scenario: Special characters on password
  When I press the "Sign up now" button
  Then I should see "Connect by e-mail"
  Given I input "random email" into input field number 1
  Given I enter "!@I#Y!@(*#((!(" into input field number 2
  Given I press the "Sign up" button
  Given I toogle to accept agreement T&C
  When I press the "Let’s Go" button
  Then I should see Home screen
