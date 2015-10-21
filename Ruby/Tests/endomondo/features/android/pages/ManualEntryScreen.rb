class ManualEntryScreen < DroidEndomondo
  
  element(:duration_button) { "RobotoTextView text:'Duration'" }
  
  trait(:trait) { duration_button }
  
  action(:touch_duration_button) { touch(duration_button) }
  
end
