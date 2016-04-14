Feature: Sign up

  Scenario: Sign up with invalid email format
    When I accept Location Service permission
    Then I press a button labelled "Try as guest"
