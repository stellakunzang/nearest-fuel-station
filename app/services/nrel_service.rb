class NRELService
  def nearest_station(location)
    response = conn.get("nearest.json") do |req|
      req.params[:api_key] = "kinJFYKN7SQROBqhBc0aAEF1CwZROqliIcuuLF8c"
      req.params[:location] = location
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new("https://developer.nrel.gov/api/alt-fuel-stations/v1/")
  end
end
