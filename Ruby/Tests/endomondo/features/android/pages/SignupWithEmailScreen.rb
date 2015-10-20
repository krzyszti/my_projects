class SignupWithEmailScreen < DroidEndomondo
  
  element(:name_edit) { "EditText id:'name'" }
  element(:email_edit) { "AutoCompleteTextView id:'email'" }
  element(:password_edit) { "EditText id:'password'" }
  element(:male_radiobutton) { "RadioButton id:'maleRadio'" }
  element(:female_radiobutton) { "RadioButton id:'femaleRadio'" }
  element(:signup_button) { "LoginButtonView id:'commit'" }
  
  action(:touch_signup_button) {touch(signup_button)}
  action(:touch_female_radiobutton) { touch(female_radiobutton) }
  action(:touch_male_radiobutton) { touch(male_radiobutton) }
  
  trait(:trait) { name_edit }
  
  def signup_with(email, password, name, gender)
    
    if gender == 'Male'
      touch_male_radiobutton
    elsif gender == 'Female'
      touch_female_radiobutton
    end
    
    query(name_edit, {:setText => name})
    query(email_edit, {:setText => email})
    query(password_edit, {:setText => password})
    touch_signup_button
    
  end
  
end