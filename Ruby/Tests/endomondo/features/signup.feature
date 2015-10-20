Feature: Signup feature

    
  Scenario: Verify that user cannot signup when data is incorrect.
    Given the app is launched
    When I touch signup
    And I touch signup with email
    And I fill form with invalid credentials
    Then I should not be signed in
    
  Scenario: Verify that user can signup when all data is correct.
    Given the app is launched
    When I touch signup
    And I touch signup with email
    And I fill form with valid credentials
    Then I should be signed in