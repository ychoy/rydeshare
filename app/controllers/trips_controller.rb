class TripsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
	before_action :set_trip, only: [:show, :edit, :update, :destroy]
	before_action :admin_user, only: [:edit, :update, :destroy]

	def index
    @trips =  Trip.all
    @trip = Trip.new() #setting empty trips hash 
    @key = ENV['GOOGLE_MAPS']
  end

  def show
		@trips = Trip.all
  end

	def new
    @trip = Trip.new

	end

	def create
		if current_user.driver? == true
			@trip = Trip.create(trip_params)
			@trip.admin_id = current_user.id

		  if @trip.save
				flash[:success] = "Carpool added!"
	      redirect_to root_path
      else
          flash[:error] = @trip.errors.full_messages.join(", ")
          render 'new'
      end
		else
				flash[:error] = @trip.errors.full_messages.join(", ")
	      redirect_to root_path
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
    params.require(:trip).permit(:id, :address, :latitude, :longitude, :total_seats, :open_seats, :full?, :admin_id)
  end

	def admin_user
		user = current_user
		trip = Trip.find_by_id(params[:id])
		unless trip.admin?(user)
			flash[:error] = "You must be the admin to update this carpool."
			redirect_to trip_path(@trip)
		end
	end
end
