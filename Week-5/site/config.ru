require "sinatra"
require "sinatra/reloader"
require_relative "controllers/resources_controller.rb"

run ResourcesController
