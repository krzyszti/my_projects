module Endomondo
  module HistoryPage
    class << self
      
      def plus_button_click
        wait { @plus_button.click }
        manual_entry_page.assert
      end
      
      def assert_exists
        @plus_button = find_element(:id, 'create_workout_fab')
      end

      def assert
        wait { assert_exists }
      end
      
    end
  end
end

module Kernel
  def history_page
    Endomondo::HistoryPage
  end
end
