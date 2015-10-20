class LoginWithScreen < DroidEndomondo
  element(:login_with_google_button) { "RobotoTextView marked:'Login with Google'" }
  element(:login_with_facebook_button) { "RobotoTextView marked:'Login with Facebook'" }
  element(:login_with_email_button) { "RobotoTextView marked:'Login with Email'" }
  
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