class MembershipsController < ApplicationController

  def index
    @user = current_user.user_id
    @trips = Trip.find_by_id(@user)
  end

  def create
    @trip = Trip.find(params[:trip_id])
    @trip.users.push(current_user) unless @trip.member?(current_user)
    redirect_to trip_path(@trip)
  end

  def destroy
  	@trip = Trip.find(params[:trip_id])
  	@trip.users.destroy(current_user)
  	redirect_to trip_path(@trip)
  end

end
