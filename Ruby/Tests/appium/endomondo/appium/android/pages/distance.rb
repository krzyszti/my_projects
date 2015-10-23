module Endomondo
  module DistancePage
    class << self
      
      def ok_button_click
        wait { @ok_button.click }
        manual_entry_page.assert
      end
      
      def assert_exists
        @ok_button = find_element(:id, 'button1')
        @minor_picker = find_elements(:class, 'EditText')[0]
        @major_picker = find_elements(:class, 'EditText')[1]
      end

      def assert
        wait { assert_exists }
      end
      
      def set_distance
        @minor_picker.sendKeys(10)
        @major_picker.sendKeys(10)
      end
      
    end
  end
end

module Kernel
  def distance_page
    Endomondo::DistancePage
  end
end
