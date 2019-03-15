class YuGiOhIndexService

  include HTTParty

  attr_accessor :cards

  def get_all_cards
    @cards = JSON.parse(HTTParty.get("https://db.ygoprodeck.com/api/v2/cardinfo.php").body)
    @cards = @cards.first
  end

  def hello

  end

end
