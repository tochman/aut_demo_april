require 'cucumber/rails'
ActionController::Base.allow_rescue = false
begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Cucumber::Rails::Database.javascript_strategy = :truncation

Chromedriver.set_version '2.36'

Capybara.register_driver :chrome do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
      chromeOptions: {
          args: %w[ no-sandbox disable-popup-blocking disable-gpu window-size=1280,1024]
      }
  )

  Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: capabilities)
end

Capybara.javascript_driver = :chrome

World(FactoryBot::Syntax::Methods)
World(Warden::Test::Helpers)

Warden.test_mode!
After { Warden.test_reset! }