Feature: Logout feature

  Scenario: Verify that user can open logout prompt
    Given the user is logged in
    When I touch more options button
    And I touch settings button
    And I touch profile button
    And I touch logout button
    Then logout message should be visible
    
  Scenario: Verify that user can see Exit button
    Given the user was logged in
    When I touch more options button
    Then exit button should be visible