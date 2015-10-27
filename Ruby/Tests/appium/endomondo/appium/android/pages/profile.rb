module Endomondo
  module ProfilePage
    class << self
      
      def logout_click
        wait { @logout.click }
      end
      
      def assert_exists
        @logout = find_element(:id, 'ButtonIcon')
      end
      
      def assert
        wait { assert_exists }
      end
      
    end
  end
end

module Kernel
  def profile_page
    Endomondo::ProfilePage
  end
end
