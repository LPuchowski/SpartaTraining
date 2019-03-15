require 'sinatra'
require 'sinatra/reloader' if development?
# require 'sinatra/contrib'

get "/" do
  index
end

get "/random" do
  "This is a random page"
end

def index
  "Hello world, updated"
end
