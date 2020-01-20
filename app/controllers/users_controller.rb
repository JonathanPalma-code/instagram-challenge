class UsersController < ApplicationController

  skip_before_action :authorised, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.create(params.permit(:username, :email, :password, :password_confirmation))
    session[:user_id] = @user.id
    redirect_to "/sessions/#{@user.id}"
  end
end
