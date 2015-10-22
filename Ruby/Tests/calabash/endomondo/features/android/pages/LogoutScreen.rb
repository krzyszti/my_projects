class LogoutScreen < DroidEndomondo
  
  element(:ok_button) { "Button id:'button1'" }
  element(:cancel_button) { "Button id:'button2'" }
  element(:message) { "TextView id:'message'" }
  
  action(:touch_ok_button) { touch(ok_button) }
  action(:touch_cancel_button) { touch(cancel_button) }
  
  value(:message_visible?) { element_exist(message) }
  
  trait(:trait) { message }
  
end