@login
Feature: Login page
  The login page for Riskalyze should load for anyone with internet access.

  Scenario: Navigating to pro.riskalyze loads the login page.

    Given I am a user with internet access
    When I navigate to "https://pro.riskalyze.com"
    Then I should see "auth/login" in the url.
