class DurationScreen < DroidEndomondo
  
  element(:ok_button) { "Button id:'button1'" }
  
  trait(:trait) { ok_button }
  
  action(:touch_ok_button) { touch(ok_button) }
  
  def change_time
    query("NumberPicker id:'HoursPicker'", { setValue: 10 })
    query("NumberPicker id:'MinutesPicker'", { setValue: 10 })
    query("NumberPicker id:'SecondsPicker'", { setValue: 10 })
  end
  
end
