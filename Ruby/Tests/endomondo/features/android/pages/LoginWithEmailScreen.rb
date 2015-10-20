class LoginWithEmailScreen < DroidEndomondo
  element(:email_text_field) { "AutoCompleteTextView id:'email'" }
  element(:password_text_field) { "EditText id:'password'" }
  element(:login_button) { "LoginButtonView id:'commit'" }
  
  value(:not_logged_in?) { element_exists(email_text_field) }
  
  action(:touch_login_button) {touch(login_button)}
  
  trait(:trait) { email_text_field }
  
  def login_with(email, password)
    query(email_text_field, {:setText => email})
    query(password_text_field, {:setText => password})
    touch_login_button
  end
  
end