class FinalFantasyController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
    register Sinatra::Reloader
  end

  # route to view all beers
  get '/final_fantasy' do

    @characters = FinalFantasyAPI.new.final_fantasy_index_service.get_all_characters

    erb :'final_fantasy/index'
  end

  # Show page for 1 beer
  get '/final_fantasy/random' do

    @random = FinalFantasyAPI.new.final_fantasy_show_service.get_random

    erb :'final_fantasy/show'
  end

end
