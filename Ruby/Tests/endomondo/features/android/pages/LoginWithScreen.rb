class LoginWithScreen < DroidEndomondo
  element(:login_with_google_button) { "LoginButtonView id:'plus'" }
  element(:login_with_facebook_button) { "LoginButtonView id:'facebook'" }
  element(:login_with_email_button) { "LoginButtonView id:'email'" }
  
  value(:not_logged_in?) { wait_for_elements_exist(
                           [
                             login_with_google_button,
                             login_with_facebook_button,
                             login_with_email_button,
                           ],
                           timeout: 10)
                         }
  
  action(:touch_login_with_google_button) {touch(login_with_google_button)}
  action(:touch_login_with_facebook_button) {touch(login_with_facebook_button)}
  action(:touch_login_with_email_button) {touch(login_with_email_button)}
  
  trait(:trait) { login_with_email_button }
  
end