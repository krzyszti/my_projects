module Endomondo
  module DurationPage
    class << self
      
      def ok_button_click
        wait { @ok_button.click }
        manual_entry_page.assert
      end
      
      def assert_exists
        @ok_button = find_element(:id, 'button1')
        pickers = find_elements(:xpath,"//*[@class='android.widget.NumberPicker']")
        @hours_picker = pickers[0]
        @minutes_picker = pickers[1]
        @seconds_picker = pickers[2]
      end
      
      def set_duration
        swipe_element(@hours_picker, -40, 500)
        swipe_element(@minutes_picker, -40, 500)
        swipe_element(@seconds_picker, -40, 500)
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
