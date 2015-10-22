require_relative '../requires' # enable auto complete in RubyMine

describe 'Verify if the user can\'t login to the application with invalid credencials' do
  t 'spec' do
    
    login_page.login_click
    login_with_page.login_with_email_click
    login_with_email_page.fill_form(USERS[:invalid][:email], USERS[:invalid][:password])
    login_with_email_page.login_click
    invalid_login_page.assert
    
  end
end
