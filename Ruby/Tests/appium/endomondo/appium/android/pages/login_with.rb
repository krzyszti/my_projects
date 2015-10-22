module Endomondo
  module LoginWithPage
    class << self
      
      def login_with_email_click
        assert
        wait { @login_with_email.click }
        login_with_email_page.assert
      end

      def assert_exists
        @login_with_email = find_element(:id, 'email')
        @login_with_facebook = find_element(:id, 'facebook')
        @login_with_google = find_element(:id, 'plus')
      end

      def assert
        wait { assert_exists }
      end
    end
  end
end

module Kernel
  def login_with_page
    Endomondo::LoginWithPage
  end
end
