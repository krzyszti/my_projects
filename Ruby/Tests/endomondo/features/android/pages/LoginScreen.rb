class LoginScreen < DroidEndomondo
  
  element(:signup_button) { "RobotoTextView marked:'Sign up'" }
  element(:login_button) { "RobotoTextView marked:'Login'" }
  
  value(:not_logged_in?) { element_exists(login_button)}
  value(:not_singedup?) { element_exists(signup_button)}
  
  action(:touch_signup_button) {touch(signup_button)}
  action(:touch_login_button) {touch(login_button)}
  
  trait(:trait) { login_button }
  
end