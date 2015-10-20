class MoreOptionsScreen < DroidEndomondo
  
  element(:audo_settings) { "TextView text:'Audio Settings'" }
  element(:settings) { "TextView text:'Settings'" }
  element(:tutorial) { "TextView text:'Tutorial'" }
  element(:exit) { "TextView text:'Exit'" }
  
  action(:touch_audo_setting) {touch(audo_settings)}
  action(:touch_settings) {touch(settings)}
  action(:tutorial) {touch(tutorial)}
  action(:exit) {touch(exit)}
  
  trait(:trait) { audo_settings }
  
end