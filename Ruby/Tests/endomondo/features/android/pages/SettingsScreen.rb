class SettingsScreen < DroidEndomondo
  
  element(:profile) { "RobotoTextView text:'Profile'" }
  element(:subscription) { "RobotoTextView text:'Subscription'" }
  element(:workout_settings) { "RobotoTextView text:'Workout Settings'" }
  element(:audio_settings) { "RobotoTextView text:'Audio Settings'" }
  element(:smartwatches) { "RobotoTextView text:'Smartwatches'" }
  element(:accessory_settings) { "RobotoTextView text:'Accessory Settings'" }
  element(:connect_n_share) { "RobotoTextView text:'Connect & Share'" }
  element(:notification_settings) { "RobotoTextView text:'Notification Settings'" }
  element(:privacy) { "RobotoTextView text:'Privacy'" }
  element(:location_settings) { "RobotoTextView text:'Location Settings'" }
  element(:whats_new) { "RobotoTextView text:'What\'s new'" }
  element(:about) { "RobotoTextView text:'About'" }

  action(:touch_profile) { touch(profile) }
  action(:touch_subscription) { touch(subscription) }
  action(:touch_workout_settings) { touch(workout_settings) }
  action(:touch_subscription) { touch(audio_settings) }
  action(:touch_audio_settings) { touch(smartwatches) }
  action(:touch_accessory_settings) { touch(accessory_settings) }
  action(:touch_connect_n_share) { touch(connect_n_share) }
  action(:touch_notification_settings) { touch(notification_settings) }
  action(:touch_privacy) { touch(privacy) }
  action(:touch_location_settings) { touch(location_settings) }
  action(:touch_whats_new) { touch(whats_new) }
  action(:touch_about) { touch(about) }
  
  trait(:trait) { profile }
  
end