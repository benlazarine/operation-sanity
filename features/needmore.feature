Feature: Atmosphere "Need more?" resource request

  Background:
    Given "Test_user" as the persona

  Scenario: Request More Resources
    When I visit "$Atmosphere"
    And I press "Login"
    And I fill in "username" with "$username"
    And I fill in "password" with "$password"
    And I press "LOGIN"
    Then I should see "Need more?" within 10 seconds
    And I press "Need more?"
    Then I should see "What cloud would you like resources for?" within 10 seconds
    And I ask for "100 AU" resources for "this is just a test" reason
    And I press "Request Resources"
    Then I should see "Resource Request submitted" within 20 seconds
