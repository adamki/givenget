class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create

  def new

  end

  def create
    user = User.find_or_create_from_auth_hash(auth_hash)
    session[:user_id] = user.id
    flash[:notice] = "Login successful"
    redirect_to '/dashboard'
  end

  def show

  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You have logged out"
    redirect_to root_path
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
