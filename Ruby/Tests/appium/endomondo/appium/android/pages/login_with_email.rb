module Endomondo
  module LoginWithEmailPage
    class << self
      
      def login_click
        assert
        wait { @login_button.click }
      end
      
      def fill_form(email, password)
        assert
        wait { @email_field.type(email) }
        wait { @password_field.type(password)}
      end
      
      def assert_exists
        @email_field = find_element(:id, 'email')
        @password_field = find_element(:id, 'password')
        @login_button = find_element(:id, 'commit')
      end

      def assert
        wait { assert_exists }
      end
      
    end
  end
end

module Kernel
  def login_with_email_page
    Endomondo::LoginWithEmailPage
  end
end
