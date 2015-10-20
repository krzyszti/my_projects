USERS = {
  valid: { email: 'krzysztof@yopmail.com', password: 'test', name: 'Krzysztof', gender: 'Male' },
  invalid: { email: '1234', password: '1234', name: 'Test', gender: 'Female' }
}


Given(/^the app is launched$/) do
  
  @login_screen = page(LoginScreen).await
  
end


Given(/^the user is logged in$/) do
  
  @workout_screen = page(WorkoutScreen).await
  
end


When(/^I touch login$/) do
  
  @login_screen.touch_login_button
 
end

When(/^I touch signup$/) do
  
  @login_screen.touch_signup_button
 
end

And(/^I touch login with email$/) do
  
  @login_with_screen = page(LoginWithScreen).await
  @login_with_screen.touch_login_with_email_button
  
end

And(/^I touch signup with email$/) do
  
  @signup_with_screen = page(SignupWithScreen).await
  @signup_with_screen.touch_signup_with_email_button
  
end 


And(/^I login with (valid|invalid) credentials$/) do |negate|
  
  @login_with_email_screen = page(LoginWithEmailScreen).await
  @login_with_email_screen.login_with(USERS[:valid][:email], USERS[:valid][:password]) if negate.eql? 'valid'
  @login_with_email_screen.login_with(USERS[:invalid][:email], USERS[:invalid][:password]) if negate.eql? 'invalid'
  
end


And(/^I fill form with (valid|invalid) credentials$/) do |negate|
  
  @signup_with_email_screen = page(SignupWithEmailScreen).await
  @signup_with_email_screen.signup_with(USERS[:valid][:email], USERS[:valid][:password], USERS[:valid][:name], USERS[:valid][:gender]) if negate.eql? 'valid'
  @signup_with_email_screen.signup_with(USERS[:invalid][:email], USERS[:invalid][:password], USERS[:invalid][:name], USERS[:invalid][:gender]) if negate.eql? 'invalid'
  
end


Then (/^I (should|should not) be logged in$/) do |negate|
  
  if negate.include? 'not'
    @invalid_login_screen = page(InvalidLoginScreen).await
  else
    @workout_screen = page(WorkoutScreen).await
  end
 
end


Then (/^I (should|should not) be signed in$/) do |negate|
  
  if negate.include? 'not'
    @invalid_signup_screen = page(InvalidSignupScreen).await
  else
    @workout_screen = page(WorkoutScreen).await
  end
 
end