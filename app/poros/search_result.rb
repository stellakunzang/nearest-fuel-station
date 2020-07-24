class SearchResult

  attr_reader :location

  def initialize(location)
    @location = location
  end

  def station
    service = NRELService.new.nearest_station(@location)
    Station.new(service)
    binding.pry
  end

  def directions
  end

end
