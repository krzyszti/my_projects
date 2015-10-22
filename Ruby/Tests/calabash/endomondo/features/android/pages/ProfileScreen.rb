class ProfileScreen < DroidEndomondo
  
  element(:save_button) { "Button text:'Save'" }
  element(:logout_button) { "ImageView id:'ButtonIcon'" }
  
  action(:touch_save_button) { touch(save_button) }
  action(:touch_logout_button) { touch(logout_button) }
  
  trait(:trait) { save_button }
  
end