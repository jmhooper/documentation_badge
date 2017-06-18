require "rspec"
require "capybara/rspec"
require "capybara-webkit"
require "webmock/rspec"
require "pry-byebug"

require "./app"
require "./lib/documentation_badge"

# Pull in DocumentationBadge module for unit tests
include DocumentationBadge

# Allow capybara to send requests to localhost
WebMock.disable_net_connect!(allow_localhost: true)

# Configure capybara
Capybara.app = Application
Capybara.save_path = "tmp/capybara"
Capybara.javascript_driver = :webkit
Capybara.current_driver = :webkit

# Configure RSpec (use the defaults lol)
RSpec.configure do |config|
end
