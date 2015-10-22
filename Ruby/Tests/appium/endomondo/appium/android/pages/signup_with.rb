module Endomondo
  module SignupWithPage
    class << self
      #
      # asserts
      #

      def assert_exists
        text_exact 'Signup with Email'
      end

      def assert
        wait { assert_exists }
      end
    end
  end
end

module Kernel
  def signup_with_page
    Endomondo::SignupWithPage
  end
end
