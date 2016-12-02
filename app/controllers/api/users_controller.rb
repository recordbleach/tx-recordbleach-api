class Api::UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
  end

  def me
  
    @user = current_resource_owner
    render "api/registrations/user"
  end

  def delete
    @user = current_resource_owner
    @user.destroy
    head :ok
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password_digest)
  end

  # Find the user that owns the access token
  def current_resource_owner
    User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end
end
