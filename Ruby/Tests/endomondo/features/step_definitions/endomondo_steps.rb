USERS = {
  valid: { email: 'krzysztof@yopmail.com', password: 'test' },
  invalid: { email: 'admin@facebook.com', password: '1234' }
}


Given(/^the app is launched$/) do
  
  @login_screen = page(LoginScreen).await
  
end


When(/^I touch login$/) do
  
  @login_screen.touch_login_button
 
end

And(/^I touch login with email$/) do
  
  @login_with_screen = page(LoginWithScreen).await
  @login_with_screen.touch_login_with_email_button
  
end 


And(/^I login with (valid|invalid) credentials$/) do |negate|
  
  @login_with_email_screen = page(LoginWithEmailScreen).await
  @login_with_email_screen.login_with(USERS[:valid][:email], USERS[:valid][:password]) if negate.eql? 'valid'
  @login_with_email_screen.login_with(USERS[:invalid][:email], USERS[:invalid][:password]) if negate.eql? 'invalid'
  
end


Then (/^I (should|should not) be logged in$/) do |negate|
  if negate.include? 'not'
    @login_with_email_screen.not_logged_in? == true
  else
    @workout_screen = page(WorkoutScreen).await
    @workout_screen.logged_in? == true
  end
 
end
