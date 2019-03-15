require 'rspec'
require_relative '../lib/final_fantasy_api'
require_relative '../lib/yugioh_api'

RSpec.configure do |config|
  config.color_mode = true
  config.formatter = :documentation
end
