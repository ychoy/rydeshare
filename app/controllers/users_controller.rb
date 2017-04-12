class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
  	@user = User.find_by_id(params[:id])
    @memberships = @user.memberships
  end

  def edit
    @user = current_user
  end

  private

  def user_params
    #Using `strong_parameters` gem
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number, :password, :password_confirmation, :current_password)
  end
end
