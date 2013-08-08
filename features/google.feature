Feature:
  In order to test google search
  As a user
  I want to search Google

  Scenario: Google search
    Given user is on search page
    When user searches for cheese
    Then the results page title contains cheese