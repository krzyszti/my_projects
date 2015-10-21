Given(/^the app is launched$/) do
  
  @login_screen = page(LoginScreen).await
  
end


Given(/^the user is logged in$/) do
  
  @login_screen = page(LoginScreen).await
  @login_screen.touch_login_button
  @login_with_screen = page(LoginWithScreen).await
  @login_with_screen.touch_login_with_email_button
  @login_with_email_screen = page(LoginWithEmailScreen).await
  @login_with_email_screen.login_with(USERS[:valid][:email], USERS[:valid][:password])
  @workout_screen = page(WorkoutScreen).await
  
end

Given(/^the user was logged in$/) do

  @workout_screen = page(WorkoutScreen).await
  
end