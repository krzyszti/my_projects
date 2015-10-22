class DistanceScreen < DroidEndomondo
  
  element(:ok_button) { "Button id:'button1'" }
  element(:minor_picker) { "NumberPicker id:'MinorPicker'" }
  element(:major_picker) { "NumberPicker id:'MajorPicker'" }
  
  trait(:trait) { ok_button }
  
  action(:touch_ok_button) { touch(ok_button) }
  
  def change_distance
    query(minor_picker, { setValue: 10 })
    query(major_picker, { setValue: 10 })
  end
  
end
