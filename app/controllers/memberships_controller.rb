class MembershipsController < ApplicationController

  def index
    @user = current_user.user_id
    @trips = Trip.find_by_id(@user)
  end

end
