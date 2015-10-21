When(/^I touch signup$/) do
  
  @login_screen.touch_signup_button
  @signup_with_screen = page(SignupWithScreen).await
 
end


And(/^I touch signup with email$/) do
  
  @signup_with_screen.touch_signup_with_email_button
  @signup_with_email_screen = page(SignupWithEmailScreen).await
  
end 


And(/^I fill form with (valid|invalid) credentials$/) do |negate|
  
  @signup_with_email_screen.signup_with(USERS[:valid][:email], USERS[:valid][:password], USERS[:valid][:name], USERS[:valid][:gender]) if negate.eql? 'valid'
  @signup_with_email_screen.signup_with(USERS[:invalid][:email], USERS[:invalid][:password], USERS[:invalid][:name], USERS[:invalid][:gender]) if negate.eql? 'invalid'
  
end


Then (/^I (should|should not) be signed in$/) do |negate|
  
  if negate.include? 'not'
    @invalid_signup_screen = page(InvalidSignupScreen).await
  else
    @workout_screen = page(WorkoutScreen).await
  end
 
end
