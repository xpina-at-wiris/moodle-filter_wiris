@mtmoodle-26 @filter @filter_wiris @wiris_mathtype @3.x @4.x @filter_settings
Feature: Check Wiris Quizzes settings link
In order to check the Wiris Quizzes settings link redirects correctly
As an admin
I need to access the filters page in site administration

  Background:
    Given the "wiris" filter is "on"
    And I log in as "admin"

  @javascript
  Scenario: MTMOODLE-26 - Check the Wiris Quizzes settings link redirects correctly
    And I navigate to "Plugins > Filters" in site administration
    And I follow "Wiris Quizzes settings"
    Then "Connection settings" "text" should exist
    And "Compatibility settings" "text" should exist
    And "Troubleshooting" "text" should exist
