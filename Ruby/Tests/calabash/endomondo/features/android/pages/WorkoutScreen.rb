class WorkoutScreen < DroidEndomondo
  
  element(:motivation_main_button) { "MotivationMainButton id:'MotivationMainButton'" }
  element(:sport_main_button) { "SportMainButton id:'SportMainButton'" }
  element(:workout_button) { "ImageButton id:'ButtonStartPauseFront'" }
  element(:more_options) { "d ContentDescription:'More options'" }
  element(:music) { "ActionMenuItemView ContentDescription:'Music'" }
  element(:inbox) { "ActionMenuItemView ContentDescription:'Inbox'" }
  element(:navigation_button) { "ImageButton ContentDescription:'Navigation drawer'" }
  element(:countdown_text) { "RobotoTextView id:'ButtonCountdownStopText'" }
  element(:stop_countdown) { "ImageButton id:'ButtonCountdownStopFront'" }
  
  value(:logged_in?) { element_exists(more_options) }
  value(:stop_visible?) { element_exists(stop_countdown) }
  
  trait(:trait) { more_options }
  
  action(:touch_motivation_main_button) { touch(motivation_main_button) }
  action(:touch_sport_main_button) { touch(sport_main_button) }
  action(:touch_workout_button) { touch(workout_button) }
  action(:touch_more_options) { touch(more_options) }
  action(:touch_navigation_button) { touch(navigation_button) }
  action(:touch_music) { touch(music) }
  action(:touch_inbox) { touch(inbox) }
  action(:touch_stop_countdown) { touch(stop_countdown) }
  
end