class FinalFantasyIndexService

  include HTTParty

  attr_accessor :characters

  def get_all_characters
    @characters = JSON.parse(HTTParty.get("https://www.moogleapi.com/api/characters").body)
    # @characters = @characters.first
  end

  def hello

  end

end
