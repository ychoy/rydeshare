class TripsController < ApplicationController
  def index
    @trips =  Trip.all
  end

  def show
    @trip = Trip.find_by_id(params[:id])
  end

end
