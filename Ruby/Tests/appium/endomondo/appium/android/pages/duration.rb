module Endomondo
  module DurationPage
    class << self
      
      def ok_button_click
        wait { @ok_button.click }
        manual_entry_page.assert
      end
      
      def assert_exists
        @ok_button = find_element(:id, 'button1')
        @hours_picker = find_element(:id, 'HoursPicker')
        @minutes_picker = find_element(:id, 'MinutesPicker')
        @seconds_picker = find_element(:id, 'SecondsPicker')
      end
      
      def set_duration
        @hours_picker.sendKeys(10)
        @minutes_picker.sendKeys(10)
        @seconds_picker.sendKeys(10)
      end
      
      def assert
        wait { assert_exists }
      end
      
    end
  end
end

module Kernel
  def duration_page
    Endomondo::DurationPage
  end
end
