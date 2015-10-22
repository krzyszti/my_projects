class MoreOptionsScreen < DroidEndomondo
  
  element(:audio_settings) { "TextView text:'Audio Settings'" }
  element(:settings) { "TextView text:'Settings'" }
  element(:tutorial) { "TextView text:'Tutorial'" }
  element(:exit) { "TextView text:'Exit'" }
  
  action(:touch_audio_setting) { touch(audio_settings) }
  action(:touch_settings) { touch(settings) }
  action(:touch_tutorial) { touch(tutorial) }
  action(:touch_exit) { touch(exit) }
  
  value(:exit_visible?) { element_exists(exit) }
  
  trait(:trait) { audio_settings }
  
end