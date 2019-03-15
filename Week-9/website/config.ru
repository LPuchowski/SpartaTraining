require 'sinatra'
require 'sinatra/reloader' if development?
require 'httparty'
require 'json'
require_relative 'lib/yugioh_api.rb'
require_relative 'lib/final_fantasy_api.rb'
require_relative './app/controllers/static_controller.rb'
require_relative './app/controllers/yugioh_controller.rb'
require_relative './app/controllers/final_fantasy_controller.rb'

use Rack::Reloader
use Rack::MethodOverride

# use StaticController
# run PunkController

run Rack::Cascade.new([
  StaticController,
  YuGiOhController,
  FinalFantasyController
])
