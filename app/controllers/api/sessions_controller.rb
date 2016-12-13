class Api::SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by email: params[:email]

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render :user_id
    else
      flash.now[:alert] = "Something is wrong with your credentials"
      render :new
    end
  end

  def delete
    session.delete :user_id
  end


end
