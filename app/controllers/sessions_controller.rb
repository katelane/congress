class SessionsController < ApplicationController
  def new
    redirect_to '/auth/twitter'
  end

  def create
    user = User.find_or_create_from_auth_hash(auth_hash)
    session[:user_id] = user.id
    redirect_to root_path
  end

  def destroy
    session.clear
    redirect_to root_path
  end

  def failure
    redirect_to root_path, alert: 'Authentication error! Please try logging in again.'
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end

end
