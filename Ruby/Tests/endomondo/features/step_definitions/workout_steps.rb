When(/^I touch workout button$/) do
  
  @workout_screen.touch_workout_button
 
end


Then(/^stop button (should|should not) be visible$/) do |negate|
  
  if negate.include? 'not'
    @workout_screen.stop_visible? == false
  else
    @workout_screen.stop_visible? == true
  end
  
 
end