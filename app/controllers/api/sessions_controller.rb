class Api::SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by email: params[:email]

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash.now[:alert] = "Welcome back, old friend"
      render :user
    else
      flash.now[:alert] = "Something is wrong with your credentials"
      render :new
    end
  end

  def delete
    session.delete :user_id
  end


end
