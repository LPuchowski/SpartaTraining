class FinalFantasyShowService

  include HTTParty

  attr_accessor :character

  def get_character id
    @character = JSON.parse(HTTParty.get("https://www.moogleapi.com/api/characters/#{id}").body)
  end

  def get_random
    @random = JSON.parse(HTTParty.get("https://www.moogleapi.com/api/characters/random").body)
  end

end
