class CreatedWorkoutScreen < DroidEndomondo
  
  element(:summary_text) { "RobotoTextView text:'Summary'" }
  
  trait(:trait) { summary_text }
  
  action(:touch_summary_text) { touch(summary_text) }
  
end
