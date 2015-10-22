Feature: Time feature

  Scenario: Verify that user can change time in History -> Manual Entry -> Duration
    Given the user is logged in
    When I touch navigation drawer button
    And I touch history button
    And I touch plus button
    And I touch duration button
    Then I should be able to change time