Feature: The Google

  I want to open a search page

  Scenario: Opening a search page
    Given I open Google page
    Then I see "Google" in the title
