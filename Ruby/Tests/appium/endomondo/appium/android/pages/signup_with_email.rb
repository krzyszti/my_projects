module Endomondo
  module SignupWithEmailPage
    class << self
      
      def signup_click
        assert
        wait { @signup_button.click }
      end
      
      def fill_form(name, email, password, gender)
        assert
        wait { @name_field.type(name) }
        wait { @email_field.type(email) }
        wait { @password_field.type(password)}
        wait {
          @female_radiobutton.click if gender == 'Female'
          @male_radiobutton.click if gender == 'Male'
        }
        
      end
      
      def assert_exists
        @name_field = find_element(:id, 'name')
        @email_field = find_element(:id, 'email')
        @password_field = find_element(:id, 'password')
        @male_radiobutton = find_element(:id, 'maleRadio')
        @female_radiobutton = find_element(:id, 'femaleRadio')
        @signup_button = find_element(:id, 'commit')
      end

      def assert
        wait { assert_exists }
      end
    end
  end
end

module Kernel
  def signup_with_email_page
    Endomondo::SignupWithEmailPage
  end
end
