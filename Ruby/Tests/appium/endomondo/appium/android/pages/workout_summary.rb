module Endomondo
  module WorkoutSummaryPage
    class << self
      
      def assert_exists
        @summary = find_element(:xpath,"//*[@class='android.widget.TextView'and @text='Summary']")
      end

      def assert
        wait { assert_exists }
      end
      
    end
  end
end

module Kernel
  def workout_summary_page
    Endomondo::WorkoutSummaryPage
  end
end
