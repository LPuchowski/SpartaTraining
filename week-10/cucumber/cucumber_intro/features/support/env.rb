require 'rspec'
require 'capybara/cucumber'

require_relative '../lib/bbcsite.rb'

Capybara.register_driver(:chrome) do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.default_driver = :chrome # Sets chrome as the default browser
  config.default_max_wait_time = 5 # Wait time for asynchronous processes to finish
  config.ignore_hidden_elements = true # Can only see visible page elements
  config.default_selector = :css # CSS selector is used by default
end

World(BBCSite)
