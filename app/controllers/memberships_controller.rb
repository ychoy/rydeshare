class MembershipsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @user = current_user.user_id
    @trips = Trip.find_by_id(@user)
    @memberships = Membership.all
  end

  def create
    membership = Membership.new(membership_params)
    @trip = Trip.find(params[:trip_id])
    @trip.users.push(current_user) unless @trip.member?(current_user)

    if membership.save
      flash[:success] = "You have joined #{membership.user.first_name}'s carpool!"
      redirect_to trip_path(@trip)
    else
      flash[:error] = @membership.errors.full_messages.join(", ")
      redirect_to root_path
    end


  end

  def destroy
  	@trip = Trip.find(params[:trip_id])
  	@trip.users.destroy(current_user)
  	redirect_to trip_path(@trip)
  end

  private

  def membership_params
    params.permit(:user_id, :trip_id, :member_type, :id)
  end
end
