class SessionsController < ApplicationController

  skip_before_action :authorised, only: [:new, :create, :welcome]

  def new
  end

  def create
    @current_user = User.find_by(email: params[:email])
    if login
      session[:user_id] = @current_user.id
      redirect_to "/sessions/#{@current_user.id}"
    else
      redirect_to login_new_path
    end
  end

  def login
    @current_user&.authenticate(params[:password])
  end

  def welcome
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
