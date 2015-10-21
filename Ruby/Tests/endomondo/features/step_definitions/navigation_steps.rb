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


Then (/^I should be able to change time$/) do
  
  @duration_screen.change_time
  sleep 10
  
end