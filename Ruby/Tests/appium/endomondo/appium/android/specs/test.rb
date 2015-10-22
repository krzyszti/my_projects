require_relative '../requires' # enable auto complete in RubyMine

describe 'Login to the application' do
  t 'spec' do
    login_page.login_click
    login_with_page.login_with_email_click
    login_with_email_page.fill_form('krzysztof@yopmail.com', 'test')
    login_with_email_page.login_click

  end
end
