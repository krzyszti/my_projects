module Endomondo
  module SignupWithPage
    class << self

      def signup_with_email_click
        assert
        wait { @signup_with_email.click }
        signup_with_email_page.assert
      end

      def assert_exists
        @signup_with_email = find_element(:id, 'email')
        @signup_with_facebook = find_element(:id, 'facebook')
        @signup_with_google = find_element(:id, 'plus')
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
