@login
Feature: Login page
  The login page for Riskalyze should load for anyone with internet access.

  Scenario: Navigating to pro.riskalyze loads the login page.

    Given I am a user with internet access
    When I navigate to "https://pro.riskalyze.com"
    Then I should see "auth/login" in the url.

  Scenario Outline: Log in to pro.riskalyze

    Given I am a "<user>"
    When I navigate to "https://pro.riskalyze.com/auth/login"
    And I log in using "<username>" and "<password>"
    Then I should see "<urlPath>" in the url.

    Examples:
      | user      | username     | password        | urlPath   |
      | Advisor   | USER_ADVISOR | USER_ADVISOR_PW | dashboard |
      | Assistant | USER_ASST    | USER_ASST_PW    | dashboard |
      | Fake      | USER_FAKE    | USER_FAKE_PW    | login     |
