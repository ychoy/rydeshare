class MembershipsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_trip, only: [:create, :destroy]

  def index
    @user = current_user.id
    @trips = Trip.where(user_id:@user)
  end

  def create
    @trip.users.push(current_user) unless @trip.member?(current_user)
    redirect_to root_path
  end

  def destroy
  	@trip.users.destroy(current_user)
  	redirect_to root_path
  end

  private

  def set_trip
    @trip = Trip.find(params[:trip_id])
  end

  def membership_params
    params.permit(:user_id, :trip_id, :member_type, :id)
  end
end
