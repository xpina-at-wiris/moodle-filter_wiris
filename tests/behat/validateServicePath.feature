@3.x @4.x @wiris_mathtype @filter @filter_wiris @filter_settings @connection_settings @mtmoodle-28
Feature: Validate service path - Invalid value
In order to check the service path setting
As an admin
I should be able to access the test service depending if the service path exists

  @javascript
  Scenario: MTMOODLE-28 - Set an incorrect service path
    Given the "wiris" filter is "on"
    And I log in as "admin"
    And I navigate to "Plugins > MathType by WIRIS" in site administration
    And I set the following fields to these values:
    | Service path | /demo/editor/rendep |
    And I press "Save changes"
    And I go to link "/filter/wiris/integration/test.php"
    Then "exception" "text" should exist

  @javascript
  Scenario: MTMOODLE-28 - Set a correct service path
    Given the "wiris" filter is "on"
    And I log in as "admin"
    And I navigate to "Plugins > MathType by WIRIS" in site administration
    And I set the following fields to these values:
    | Service path | /demo/editor/render |
    And I press "Save changes"
    And I go to link "/filter/wiris/integration/test.php"
    Then "exception" "text" should not exist
