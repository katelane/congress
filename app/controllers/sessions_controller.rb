class SessionsController < ApplicationController
  def new
    redirect_to '/auth/twitter'
  end

  def create
    user = User.find_or_create_from_auth_hash(auth_hash)
    session[:user_id] = user.id
    redirect_to root_path, notice: "Logged in as #{user.name}"
  end

  def destroy
    session.clear
    redirect_to root_path, notice: 'Signed out!'
  end

  def failure
    redirect_to root_path, alert: 'Authentication error!'
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end

end
