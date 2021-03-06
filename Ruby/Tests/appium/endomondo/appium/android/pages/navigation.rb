module Endomondo
  module NavigationPage
    class << self
      
      def history_click
        wait { @history.click }
        history_page.assert
      end
      
      def assert_exists
        @history = text('History')
      end

      def assert
        wait { assert_exists }
      end
      
    end
  end
end

module Kernel
  def navigation_page
    Endomondo::NavigationPage
  end
end
