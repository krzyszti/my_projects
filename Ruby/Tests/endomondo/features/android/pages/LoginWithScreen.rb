class LoginWithScreen < DroidEndomondo
  element(:login_with_google_button) { "RobotoTextView marked:'Login with Google'" }
  element(:login_with_facebook_button) { "RobotoTextView marked:'Login with Facebook'" }
  element(:login_with_email_button) { "RobotoTextView marked:'Login with Email'" }
  
  value(:not_logged_in?) {
                           element_exists(login_with_google_button)
                           element_exists(login_with_facebook_button)
                           element_exists(login_with_email_button)
                         }
  
  action(:touch_login_with_google_button) {touch(login_with_google_button)}
  action(:touch_login_with_facebook_button) {touch(login_with_facebook_button)}
  action(:touch_login_with_email_button) {touch(login_with_email_button)}
  
  trait(:trait) { login_with_email_button }
  
end