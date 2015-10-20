require 'calabash-android'

class DroidEndomondo < Calabash::ABase
 
  def method_missing sym, *args, &block
    send sym, *args, &block
  end
   
  def self.element element_name, &block
    define_method(element_name.to_s, &block)
  end
  
  def self.back_button
    cmd = "#{default_device.adb_command} shell input keyevent 4"
    system(cmd)
  end
  
  class << self
    alias :value    :element
    alias :action   :element
    alias :trait    :element
    alias :activity :element
  end
  
end