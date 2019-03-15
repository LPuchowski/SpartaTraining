require 'httparty'
require 'json'

class Postcodesio
  include HTTParty

  # include HTTParty equivalent to line 1

  attr_accessor :single_result, :multiple_results

  base_uri "https://api.postcodes.io"

  def single_postcode_result postcode
    response = self.class.get("/postcodes/#{postcode}").body
    @single_result = JSON.parse(response)
  end

  def multiple_postcode_result postcodearray
    response = self.class.post("/postcodes", :body => {'postcodes': postcodearray}).body
    @multiple_results = JSON.parse(response)
  end

end

postcode = Postcodesio.new

puts postcode.multiple_postcode_result ["B111BY", "B74BP"]
