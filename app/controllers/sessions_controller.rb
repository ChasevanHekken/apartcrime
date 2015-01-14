class SessionsController < ApplicationController

  def create
    user = User.find_or_create_by_auth(request.env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to root_path, notice: "Logged in as #{user.first_name}"
  end

  def destroy
    session.clear
    redirect_to root_path, notice: 'Logged out'
  end

end
