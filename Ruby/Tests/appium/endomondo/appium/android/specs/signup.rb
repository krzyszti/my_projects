require_relative '../requires' # enable auto complete in RubyMine


describe 'Verify if the user can\'t sign up to the application with invalid credentials' do
  t 'spec' do
    
    login_page.signup_click
    signup_with_page.signup_with_email_click
    signup_with_email_page.fill_form(USERS[:invalid][:name], USERS[:invalid][:email], USERS[:invalid][:password], USERS[:invalid][:gender])
    signup_with_email_page.signup_click
    invalid_login_page.assert
    
  end
end


describe 'Verify if the user can sign up to the application with valid credentials' do
  t 'spec' do
    
    reset
    login_page.signup_click
    signup_with_page.signup_with_email_click
    signup_with_email_page.fill_form(USERS[:valid][:name], USERS[:valid][:email], USERS[:valid][:password], USERS[:valid][:gender])
    signup_with_email_page.signup_click
    workout_page.assert
    
  end
end
