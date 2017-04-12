class TripsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
	before_action :set_trip, only: [:show, :edit, :update, :destroy]
	before_action :admin_user, only: [:edit, :update, :destroy]
  before_action :find_all, except: [:destroy]

	def index
    @trip = Trip.new() #setting empty trips hash
    @key = ENV['GOOGLE_MAPS']

    if params[:search].present?
      @trips = Trip.near(params[:search], 10)
    else
      @trips = Trip.all
    end
  end

  def show
  end

	def new
    @trip = Trip.new(user_id: params[:user_id])
	end

	def create
    @trip = Trip.new(trip_params)
    @trip.user_id = current_user.id
	  if @trip.save
      Membership.create(user_id: current_user.id, trip_id: @trip.id, member_type: 1)
			flash[:success] = "Carpool added!"
      redirect_to root_path
    else
      flash[:error] = @trip.errors.full_messages.join(", ")
      render 'new'
    end
 end

  def edit
    @trip = Trip.find(params[:id])
    @trips = Trip.all

  end

  def update
    @trip = Trip.find(params[:id])
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

  def find_all
    @trips = Trip.all
  end

	def trip_params
    params.require(:trip).permit(:id, :address, :destination_address, :latitude, :longitude, :total_seats, :open_seats, :full?, :user_id)
  end

	def admin_user
		@trip = Trip.find_by_id(params[:id])
		unless @trip.admin?(current_user)
			flash[:error] = "You must be the admin to update this carpool."
			redirect_to trip_path(@trip)
		end
	end
end
