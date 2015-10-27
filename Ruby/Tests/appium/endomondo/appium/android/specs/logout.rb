require_relative '../requires' # enable auto complete in RubyMine


describe 'Verify that user can exit the application' do
  t 'spec' do
    
    reset 
    login
    workout_page.more_options_click
    more_options_page.exit_click
    
  end
end


describe 'Verify that user can open logout prompt' do
  t 'spec' do
    
    reset
    login
    workout_page.more_options_click
    more_options_page.settings_click
    settings_page.profile_click
    profile_page.logout_click
    
  end
end
