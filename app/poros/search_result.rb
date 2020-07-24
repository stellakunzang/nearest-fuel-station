class SearchResult

  attr_reader :location, :station

  def initialize(location)
    @location = location
    @station = station.address + ' ' + station.city + ', ' + station.state + ' ' + station.zip
  end

  def station
    station_data = NRELService.new.nearest_station(@location)
    Station.new(station_data)
  end

  def directions
    directions_data = MapQuestService.new.directions(@location, @station)
    Directions.new(directions_data)
  end

end
