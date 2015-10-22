class SignupWithScreen < DroidEndomondo
  
  element(:signup_with_google) { "LoginButtonView id:'plus'" }
  element(:signup_with_facebook) { "LoginButtonView id:'facebook'" }
  element(:signup_with_email) { "LoginButtonView id:'email'" }
  element(:check_box) { "CheckBox text:'Send me Endomondo updates" }
  
  action(:touch_signup_with_email_button) { touch(signup_with_email) }
  
  trait(:trait) { signup_with_email }
  
end