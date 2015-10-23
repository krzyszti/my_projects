require_relative '../requires' # enable auto complete in RubyMine


describe 'Verify if the user can\'t login to the application with invalid credentials' do
  t 'spec' do
    
    login_page.login_click
    login_with_page.login_with_email_click
    login_with_email_page.fill_form(USERS[:invalid][:email], USERS[:invalid][:password])
    login_with_email_page.login_click
    invalid_login_page.assert
    
  end
end


describe 'Verify if the user can login to the application with valid credentials' do
  t 'spec' do
    
    reset 
    login_page.login_click
    login_with_page.login_with_email_click
    login_with_email_page.fill_form(USERS[:valid][:email], USERS[:valid][:password])
    login_with_email_page.login_click
    workout_page.assert
    
  end
end