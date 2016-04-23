Feature: Sign up

  Scenario: Sign up with invalid email format
    When I accept Location Service permission
    And I wait
    And I wait for 2 seconds
    And I wait for button "Try as guest" appear
