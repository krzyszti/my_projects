module Endomondo
  module DistancePage
    class << self
      
      def ok_button_click
        wait { @ok_button.click }
        manual_entry_page.assert
      end
      
      def assert_exists
        @ok_button = find_element(:id, 'button1')
        pickers = find_elements(:xpath,"//*[@class='android.widget.NumberPicker']")
        @minor_picker = pickers[1]
        @major_picker = pickers[0]
      end

      def assert
        wait { assert_exists }
      end
      
      def set_distance
        swipe_element(@minor_picker, -40, 500)
        swipe_element(@major_picker, -40, 500)
      end
      
    end
  end
end

module Kernel
  def distance_page
    Endomondo::DistancePage
  end
end
