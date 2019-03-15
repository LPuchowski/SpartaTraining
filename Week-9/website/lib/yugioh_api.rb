require 'httparty'
require 'json'
require_relative "services/yugioh_services/show_service"
require_relative "services/yugioh_services/index_service"


class YuGiOhAPI

  def yugioh_show_service
    YuGiOhShowService.new
  end

  def yugioh_index_service
    YuGiOhIndexService.new
  end

end
