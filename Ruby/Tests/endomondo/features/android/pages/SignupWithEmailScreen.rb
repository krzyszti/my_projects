class LoginWithEmailScreen < DroidEndomondo
  element(:email_text_field) { "AutoCompleteTextView marked:'email'" }
  element(:password_text_field) { "EditText marked:'password'" }
  element(:login_button) { "RobotoTextView marked:'Login'" }
  element(:error_message) { "TextView marked:'message'" }
  
  value(:not_logged_in?) { element_exists(email_text_field) }
  
  action(:touch_login_button) {touch(login_button)}
  
  trait(:trait) {
                  email_text_field
                  password_text_field
                  login_button
                }
  
  def login_with(email, password)
    query(email_text_field, {:setText => email})
    query(password_text_field, {:setText => password})
    touch_login_button
  end
  
end