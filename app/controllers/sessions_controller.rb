class SessionsController < ApplicationController

  def create
    user = User.find_by("username = ?", params[:username])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to :back
    else
      redirect_to :back, notice: 'Your account is invalid. Please Try Again.'
    end
  end

  def destroy
    session.clear
    redirect_to root_path, notice: 'Logged out'
  end

end
