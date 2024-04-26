@3.x @4.x @wiris_mathtype @filter @filter_wiris @filter_settings @mtmoodle-29
Feature: Check filters settings save correctly
In order to check if MathType settings are being saved correctly
As an admin
I need to access the filters page in site administration

  @javascript
  Scenario: MTMOODLE-29 - Check settings do not change before saving
    Given the "wiris" filter is "on"
    And I log in as "admin"
    And I navigate to "Plugins > MathType by WIRIS" in site administration
    And I set the following fields to these values:
      | Service host | www.wipis.net |
    Then "Service host" input value is equal to "wiris.net"
    And I press "Save changes"
    Then "Service host" input value is equal to "wipis.net"
