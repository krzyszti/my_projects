class ManualEntryScreen < DroidEndomondo
  
  element(:duration_button) { "RobotoTextView text:'Duration'" }
  element(:distance_button) { "RobotoTextView text:'Distance'" }
  element(:save_button) { "Button id:'saveButton'" }
  
  trait(:trait) { duration_button }
  
  action(:touch_duration_button) { touch(duration_button) }
  action(:touch_save_button) { touch(save_button) }
  action(:touch_distance_button) { touch(distance_button) }
  
end
