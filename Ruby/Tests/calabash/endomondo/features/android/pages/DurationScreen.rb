class DurationScreen < DroidEndomondo
  
  element(:ok_button) { "Button id:'button1'" }
  element(:hours_picker) { "NumberPicker id:'HoursPicker'" }
  element(:minutes_picker) { "NumberPicker id:'MinutesPicker'" }
  element(:seconds_picker) { "NumberPicker id:'SecondsPicker'" }
  
  trait(:trait) { ok_button }
  
  action(:touch_ok_button) { touch(ok_button) }
  
  def change_time
    query(hours_picker, { setValue: 10 })
    query(minutes_picker, { setValue: 10 })
    query(seconds_picker, { setValue: 10 })
  end
  
end
