module Endomondo
  module MoreOptionsPage
    class << self
      
      def settings_click
        wait { @settings.click }
        settings_page.assert
      end

      def exit_click
        wait { @exit.click }
      end

      def assert_exists
        @audio_settings = text_exact('Audio Settings')
        @settings = text_exact('Settings')
        @tutorial = text_exact('Tutorial')
        @exit = text_exact('Exit')
      end

      def assert
        wait { assert_exists }
      end
      
    end
  end
end

module Kernel
  def more_options_page
    Endomondo::MoreOptionsPage
  end
end
