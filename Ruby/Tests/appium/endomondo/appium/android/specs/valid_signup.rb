require_relative '../requires' # enable auto complete in RubyMine

describe 'Verify if the user can\'t login to the application with invalid credencials' do
  t 'spec' do
    
    login_page.signup_click
    signup_with_page.signup_with_email_click
    signup_with_email_page.fill_form(USERS[:valid][:name], USERS[:valid][:email], USERS[:valid][:password], USERS[:valid][:gender])
    signup_with_email_page.signup_click
    workout_page.assert
    
  end
end
