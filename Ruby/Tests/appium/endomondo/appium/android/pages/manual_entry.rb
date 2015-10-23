module Endomondo
  module ManualEntryPage
    class << self
      
      def save_button_click
        wait { @save_button.click }
      end
      
      def distance_click
        wait { @distance.click }
        distance_page.assert
      end
      
      def duration_click
        wait { @duration.click }
        duration_page.assert
      end
      
      def assert_exists
        @distance = find_element(:xpath,"//*[@class='android.widget.TextView'and @text='Distance']")
        @duration = find_element(:xpath,"//*[@class='android.widget.TextView'and @text='Duration']")
        @save_button = find_element(:id, 'saveButton')
      end

      def assert
        wait { assert_exists }
      end
      
    end
  end
end

module Kernel
  def manual_entry_page
    Endomondo::ManualEntryPage
  end
end
