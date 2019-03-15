require "httparty"
require "json"
require_relative "services/single_postcode_service"
require_relative "services/multiple_postcode_service"

class Postcodesio

  # Child service class
  def single_postcode_service
    SinglePostcodeService.new
  end

  def multiple_postcode_service
    MultiplePostcodeService.new
  end

end

pc = Postcodesio.new.single_postcode_service
pc.single_postcode_result "b111by"
puts pc.get_result
puts pc.get_postcode
