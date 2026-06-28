require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :headless_chrome, screen_size: [1400, 1400] do |driver_options|
    driver_options.add_argument("--disable-search-engine-choice-screen")
    driver_options.add_preference("credentials_enable_service", false)
    driver_options.add_preference("profile.password_manager_leak_detection", false)
  end

  Capybara.default_max_wait_time = 5
end
