class TripsController < ApplicationController
	before_action :set_trip, only: [:show, :edit, :update, :destroy]
  def index
    @trips =  Trip.all
    @key = ENV['GOOGLE_MAPS']
  end

  def show
		@trips = Trip.all
    @trip = Trip.find(params[:id])
  end

	def new
    @trip = Trip.new
	end

	def create
  	@trip = Trip.new(trip_params)
    if @trip.save
      flash[:success] = "Carpool added!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  	@trips = Trip.all
  end

  def update
    @trips = Trip.all
    if @trip.update(trip_params)
      redirect_to trip_path(@trip)
    else
      flash[:error] = @trip.errors.full_messages.join(", ")
      render 'edit'
    end
  end

  def destroy
    @trip.destroy
    redirect_to root_path
  end


  private

	def set_trip
    @trip = Trip.find_by_id(params[:id])
  end

	def trip_params
    params.require(:trip).permit(:id, :address, :latitude, :longitude, :total_seats, :open_seats, :full?)
  end

end
