class MapQuestService
  def directions(start_point, end_point)
    response = conn.get("route") do |req|
      req.params[:key] = "bO7mU1eXG8XJA60kTcX7mMVLPdjrAmdJ"
      req.params[:from] = start_point
      req.params[:to] = end_point
      req.params[:routeType] = "fastest"
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new("https://www.mapquestapi.com/directions/v2/")
  end
end
