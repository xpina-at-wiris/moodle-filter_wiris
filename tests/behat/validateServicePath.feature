@mtmoodle-28 @filter @filter_wiris @wiris_mathtype @3.x @4.x @filter_settings @connection_settings
Feature: Validate service path - Invalid value
In order to check the service path setting
As an admin
I should be able to access the test service depending if the service path exists

  @javascript
  Scenario: MTMOODLE-28 - Set a correct service path
    Given the "wiris" filter is "on"
    And I log in as "admin"
    And I navigate to "Plugins > MathType by WIRIS" in site administration
    And I set the following fields to these values:
    | Service path | /filter/wiris/integration/test.php |
    And I press "Save changes"
    And I go to link "/filter/wiris/integration/test.php"
    Then "exception" "text" should not exist

  @javascript
  Scenario: MTMOODLE-28 - Set a correct service path
    Given the "wiris" filter is "on"
    And I log in as "admin"
    And I navigate to "Plugins > MathType by WIRIS" in site administration
    And I set the following fields to these values:
    | Service path | /filter/wiris/integration/test.php |
    And I press "Save changes"
    And I go to link "/filter/wiris/integration/test.php"
    Then "exception" "text" should not exist
