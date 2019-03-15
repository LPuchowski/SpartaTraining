class YuGiOhController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
    register Sinatra::Reloader
  end

  # route to view all cards
  get '/yugioh' do

    @cards = YuGiOhAPI.new.yugioh_index_service.get_all_cards

    erb :'yugioh/index'
  end

  # Show page for 1 card
  get '/yugioh/:id' do
    id = params[:id].to_i

    @card = YuGiOhAPI.new.yugioh_show_service.get_card(id)

    @card = @card.first

    erb :'yugioh/show'
  end

end
