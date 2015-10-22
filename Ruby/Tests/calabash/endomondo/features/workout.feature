Feature: Workout feature

  Scenario: Verify that the user can add history workout
    Given the user is logged in
    When I touch navigation drawer button
    And I touch history button
    And I touch plus button
    And I touch duration button
    Then I should be able to change time
    When I touch done button
    And I touch distance button
    And I enter the distance
    And I touch ok button
    And I touch save button
    Then I should see summary
    
  Scenario: Verify that user can start and pause workout
    Given the user was logged in
    When I touch workout button
    And I touch workout button
    Then stop button should be visible
    
  Scenario: Verify that stop button does not show when the user starts workout
    Given the user was logged in
    When I touch workout button
    Then stop button should not be visible