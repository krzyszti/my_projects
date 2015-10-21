class NavigationDrawerScreen < DroidEndomondo
  
  element(:history_button) { "RobotoTextView text:'History'" }
  
  trait(:trait) { history_button }
  
  action(:touch_history_button) { touch(history_button) }
  
end
