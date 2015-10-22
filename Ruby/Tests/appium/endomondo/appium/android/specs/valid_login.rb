require_relative '../requires' # enable auto complete in RubyMine

describe 'Verify if the user can login to the application with valid credencials' do
  t 'spec' do
    
    login_page.login_click
    login_with_page.login_with_email_click
    login_with_email_page.fill_form(USERS[:valid][:email], USERS[:valid][:password])
    login_with_email_page.login_click
    workout_page.assert
    
  end
end