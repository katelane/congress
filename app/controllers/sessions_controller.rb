class SessionsController < ApplicationController
  def new
    redirect_to '/auth/twitter'
  end

  def create
    user = User.find_or_create_from_auth_hash(auth_hash)
    session[:user_id] = user.id
    redirect_to root_path, notice: "You have been logged in with Twitter."
  end

  def destroy
    session.clear
    redirect_to root_path, notice: "You've been succesfully signed out."
  end

  def failure
    redirect_to root_path, alert: 'Authentication error! Please try logging in again.'
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end

end
