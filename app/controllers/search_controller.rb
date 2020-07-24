class SearchController < ApplicationController
  def index
    search = SearchResult.new(params[:location])
    @station = search.station
#     @address="1225 17th St.",
#     @city="Denver",
#     @fuel="ELEC",
#     @name="Seventeenth Street Plaza",
#     @state="CO",
#     @zip="80202"
    @directions = search.directions
#     @directions="Start out going southeast on 17th St toward Larimer St/CO-33.1225 17TH ST is on the right.",
#     @distance=0.1,
#     @travel_time="00:00:40"
  end
end
