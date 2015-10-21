When (/^I touch more options button$/) do
  
  @workout_screen.touch_more_options
  @more_options_screen = page(MoreOptionsScreen).await
  
end


And (/^I touch settings button$/) do
  
  @more_options_screen.touch_settings
  @settings_screen = page(SettingsScreen).await
  
end


And (/^I touch profile button$/) do
  
  @settings_screen.touch_profile
  @profile_screen = page(ProfileScreen).await
  
end


And (/^I touch logout button$/) do
  
  @profile_screen.touch_logout_button
  @logout_screen = page(LogoutScreen).await
  
end


Then (/^logout message should be visible$/) do
  
  
  @logout_screen = page(LogoutScreen).await
  
end


Then (/^exit button should be visible$/) do
  
  @more_options_screen = page(MoreOptionsScreen).await
  
end