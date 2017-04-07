class TripsController < ApplicationController
  def index
    @trips =  Trip.all
  end

  def show
    @trip = Trip.find_by_id(params[:id])
  end

  def maps
    url = 'https://maps.googleapis.com/maps/api/js?key='
    key = ENV['GOOGLE_MAPS']
    @endpoint = url + key
  end

end
