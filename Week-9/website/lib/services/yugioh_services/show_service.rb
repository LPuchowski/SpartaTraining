class YuGiOhShowService

  include HTTParty

  attr_accessor :card

  def get_card id
    @card = JSON.parse(HTTParty.get("https://db.ygoprodeck.com/api/v2/cardinfo.php/#{id}").body)
  end

  def get_limit_reverse
    @lr = JSON.parse(HTTParty.get("https://db.ygoprodeck.com/api/v2/cardinfo.php/?name=limit_reverse").body)
  end

end
