require_relative '../requires' # enable auto complete in RubyMine


describe 'Verify that the user can add history workout' do
  t 'spec' do
    
    reset
    login
    workout_page.navigation_button_click
    navigation_page.history_click
    history_page.plus_button_click
    manual_entry_page.distance_click
    distance_page.set_distance
    distance_page.ok_button_click
    manual_entry_page.duration_click
    duration_page.set_duration
    duration_page.ok_button_click
    manual_entry_page.save_button_click
    
  end
end


describe 'Verify that user can start and pause workout' do
  t 'spec' do
    
    reset
    login
    workout_page.workout_button_click
    workout_page.workout_button_click
    workout_page.assert_stop
    
  end
end


describe 'Verify that stop button does not show when the user starts workout' do
  t 'spec' do
    
    reset
    login
    workout_page.workout_button_click
    workout_page.assert_countdown
    
  end
end