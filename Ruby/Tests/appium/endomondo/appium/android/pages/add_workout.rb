module Endomondo
  module WorkoutPage
    class << self
      
      def motivation_main_button_click
        assert
        wait { @motivation_main_button.click }
      end
      
      def sport_main_button_click
        assert
        wait { @sport_main_button.click }
      end
      
      def workout_button_click
        assert
        wait { @workout_button.click }
      end
      
      def stop_countdown_click
        assert
        wait { @stop_countdown.click }
      end
      
      def more_options_click
        assert
        wait { @more_options.click }
      end
      
      def navigation_button_click
        assert
        wait { @navigation_button.click }
      end
      
      def assert_countdown
        wait { @stop_countdown = find_element(:id, 'ButtonCountdownStopBackground') }
      end
      
      def assert_stop
        wait { @stop = find_element(:id, 'ButtonCountdownStopFront') }
      end
      
      def assert_exists
        @motivation_main_button = find_element(:id, 'MotivationMainButton')
        @sport_main_button = find_element(:id, 'SportMainButton')
        @workout_button = find_element(:id, 'ButtonStartPauseFront')
        @more_options = find_element(:xpath,"//*[@class='android.widget.ImageView'and @content-desc='More options']")
        @navigation_button = find_element(:xpath,"//*[@class='android.widget.ImageButton'and @content-desc='Navigation drawer']")
      end

      def assert
        wait { assert_exists }
      end
      
    end
  end
end

module Kernel
  def workout_page
    Endomondo::WorkoutPage
  end
end
