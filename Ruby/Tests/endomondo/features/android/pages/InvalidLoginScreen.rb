class InvalidLoginScreen < DroidEndomondo
  
  element(:message) { "TextView id:'message'" }
  
  value(:not_logged_in?) { element_exists(message)}
  
  trait(:trait) { message }
  
end