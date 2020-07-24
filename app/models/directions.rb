class Directions

  attr_reader :distance, :travel_time, :directions

  def initialize(data)
    @data = data
    @distance = @data[:route][:distance].round(1).to_s + " miles"
    @travel_time = @data[:route][:formattedTime]
    @directions = narrative(@data)
  end

  def narrative(data)
    narrative = ""
    data[:route][:legs][0][:maneuvers].map do |maneuver|
      narrative += maneuver[:narrative]
    end
    narrative.gsub('.', '. ')
  end
end
