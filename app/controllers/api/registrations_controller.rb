class Api::RegistrationsController < ApplicationController

  def create
    @user = User.new params.require(:user).permit(:username, :email, :password)
    if @user.save
      # render api/registrations/user.json.jbuilder
      render :user
    else
      render json: @user.errors, status: 422
    end
  end
end
