When(/^I touch login$/) do
  
  @login_screen.touch_login_button
  @login_with_screen = page(LoginWithScreen).await
 
end


And(/^I touch login with email$/) do
  
  @login_with_screen.touch_login_with_email_button
  @login_with_email_screen = page(LoginWithEmailScreen).await
  
end


And(/^I login with (valid|invalid) credentials$/) do |negate|
  
  @login_with_email_screen.login_with(USERS[:valid][:email], USERS[:valid][:password]) if negate.eql? 'valid'
  @login_with_email_screen.login_with(USERS[:invalid][:email], USERS[:invalid][:password]) if negate.eql? 'invalid'
  
end


Then (/^I (should|should not) be logged in$/) do |negate|
  
  if negate.include? 'not'
    @invalid_login_screen = page(InvalidLoginScreen).await
  else
    @workout_screen = page(WorkoutScreen).await
  end
 
end
