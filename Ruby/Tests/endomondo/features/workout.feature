Feature: Workout feature

  Scenario: Verify that user can start and pause workout
    Given the user is logged in
    When I touch workout button
    And I touch workout button
    Then stop button should be visible
    
  Scenario: Verify that stop button does not show when the user starts workout
    Given the user was logged in
    When I touch workout button
    Then stop button should not be visible  