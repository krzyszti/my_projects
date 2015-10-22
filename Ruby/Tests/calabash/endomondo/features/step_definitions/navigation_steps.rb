And(/^I touch navigation drawer button$/) do
  
  @workout_screen.touch_navigation_button
  @navigation_screen = page(NavigationDrawerScreen).await
  
end


And(/^I touch history button$/) do
  
  @navigation_screen.touch_history_button
  @history_screen = page(HistoryScreen).await
  
end


And(/^I touch plus button$/) do
  
  @history_screen.touch_plus_button
  @manual_entry_screen = page(ManualEntryScreen).await
  
end


And(/^I touch duration button$/) do
  
  @manual_entry_screen.touch_duration_button
  @duration_screen = page(DurationScreen).await
  
end


And (/^I touch done button$/) do
  
  @duration_screen.touch_ok_button
  @manual_entry_screen.await
  
end


And (/^I touch distance button$/) do
  
  @manual_entry_screen.touch_distance_button
  @distance_screen = page(DistanceScreen).await
  
end


And (/^I enter the distance$/) do
  
  @distance_screen.change_distance
  
end


And (/^I touch ok button$/) do
  
  @distance_screen.touch_ok_button
  @manual_entry_screen.await
  
end


And (/^I touch save button$/) do
  
  @manual_entry_screen.touch_save_button
  
end


Then (/^I should see summary$/) do
  
  @created_workout_screen = page(CreatedWorkoutScreen).await
  
end


Then (/^I should be able to change time$/) do
  
  @duration_screen.change_time
  
end
