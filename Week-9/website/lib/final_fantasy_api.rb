require 'httparty'
require 'json'
require_relative "services/final_fantasy_services/show_service"
require_relative "services/final_fantasy_services/index_service"


class FinalFantasyAPI

  def final_fantasy_show_service
    FinalFantasyShowService.new
  end

  def final_fantasy_index_service
    FinalFantasyIndexService.new
  end

end
