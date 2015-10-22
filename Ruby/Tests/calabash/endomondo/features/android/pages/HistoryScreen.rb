class HistoryScreen < DroidEndomondo
  
  element(:plus_button) { "ImageButton id:'create_workout_fab'" }
  
  trait(:trait) { plus_button }
  
  action(:touch_plus_button) { touch(plus_button) }
  
end
