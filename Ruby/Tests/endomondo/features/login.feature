Feature: Login feature

    
  Scenario: Verify that user cannot login when data is incorrect.
    Given the app is launched
    When I touch login
    And I touch login with email
    And I login with invalid credentials
    Then I should not be logged in
    
  Scenario: Verify that user can login when all data is correct.
    Given the app is launched
    When I touch login
    And I touch login with email
    And I login with valid credentials
    Then I should be logged in