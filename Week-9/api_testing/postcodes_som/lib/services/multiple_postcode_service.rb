class MultiplePostcodeService

  include HTTParty

  base_uri "https://api.postcodes.io"

  def multiple_postcode_result postcodearray
    response = self.class.post("/postcodes", :body => {'postcodes': postcodearray}).body
    @multiple_results = JSON.parse(response)
  end

  def get_status
    @multiple_results["status"]
  end

  def get_nth_result n
    @multiple_results["result"][n]["query"]
  end

  def get_result
    @multiple_results["result"]
  end

  def get_postcode
    get_result["postcode"]
  end

end
