class WorkoutScreen < DroidEndomondo
  
  element(:toolbar) { "Toolbar marked:'action_bar'"}
  
  value(:logged_in?) { element_exists(toolbar) }
  
  trait(:trait) { toolbar }
  
end