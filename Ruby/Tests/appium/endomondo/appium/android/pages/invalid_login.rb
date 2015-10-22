module Endomondo
  module InvalidLoginPage
    class << self
      
      def assert_exists
        @message = find_element(:id, 'message')
      end

      def assert
        wait { assert_exists }
      end
      
    end
  end
end

module Kernel
  def invalid_login_page
    Endomondo::InvalidLoginPage
  end
end
