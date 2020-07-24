class SearchController < ApplicationController
  def index
    search = SearchResult.new(params[:location])
    @station = search.station
    @directions = search.directions()
  end
end
