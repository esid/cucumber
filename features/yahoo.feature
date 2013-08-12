Feature:
  In order to test yahoo search
  As a user
  I want to search Yahoo


  Scenario: Yahoo search
    Given user is on yahoo search page
    When user searches for google
    Then the results page title contains google