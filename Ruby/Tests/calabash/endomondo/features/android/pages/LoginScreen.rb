class LoginScreen < DroidEndomondo
  
  element(:signup_button) { "LoginButtonView id:'signup'" }
  element(:login_button) { "LoginButtonView id:'login'" }
  
  value(:not_logged_in?) { element_exists(login_button) }
  
  action(:touch_signup_button) {touch(signup_button)}
  action(:touch_login_button) {touch(login_button)}
  
  trait(:trait) { login_button }
  
end