module Endomondo
  module WorkoutPage
    class << self
      
      def assert_exists
        @login = find_element(:id, 'MotivationMainButton')
      end

      def assert
        wait { assert_exists }
      end
      
    end
  end
end

module Kernel
  def workout_page
    Endomondo::WorkoutPage
  end
end
