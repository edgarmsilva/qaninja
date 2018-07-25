require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    
    # config.default_driver = :selenium #<== firefox

# Até 10 segundos para achar um elemento

Capybara.default_max_wait_time = 10

end