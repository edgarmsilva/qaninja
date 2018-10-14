require 'capybara'
require 'capybara/cucumber'
require 'site_prism'


SitePrism.configure do |config|
    config.use_implicit_waits = true
  end

Capybara.configure do |config|
    config.default_driver = :selenium_chrome_headless
    # config.default_driver = :selenium #<== firefox
    
    config.app_host  = 'http://mark7.herokuapp.com'
end    
   
# Até 10 segundos para achar um elemento
Capybara.default_max_wait_time = 10
