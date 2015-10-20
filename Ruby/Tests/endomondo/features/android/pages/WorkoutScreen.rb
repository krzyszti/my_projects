class WorkoutScreen < DroidEndomondo
  
  element(:motivation_main_button) { "MotivationMainButton id:'MotivationMainButton'" }
  element(:sport_main_button) { "SportMainButton id:'SportMainButton'" }
  element(:workout_button) { "ImageButton id:'ButtonStartPauseFront'" }
  element(:more_options) { "d ContentDescription:'More options'" }
  element(:music) { "ActionMenuItemView ContentDescription:'Music'" }
  element(:inbox) { "ActionMenuItemView ContentDescription:'Inbox'" }
  element(:navigation_button) { "ImageButton ContentDescription:'Navigation drawer'" }
  element(:countdown_text) { "RobotoTextView id:'ButtonCountdownStopText'" }
  element(:workout_button) { "ImageButton id:'ButtonCountdownStopFribt'" }
  
  value(:logged_in?) { element_exists(more_options) }
  
  trait(:trait) { more_options }
  
end
