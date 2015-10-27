module Endomondo
  module SettingsPage
    class << self
      
      def profile_click
        wait { @profile.click }
        profile_page.assert
      end
      
      def assert_exists
        @profile = text_exact('Profile')
      end
      
      def assert
        wait { assert_exists }
      end
      
    end
  end
end

module Kernel
  def settings_page
    Endomondo::SettingsPage
  end
end
