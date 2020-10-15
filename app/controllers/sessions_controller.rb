class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to :tasks, notice: "Login Successful"
    else
      flash.alert = "Login Failed"
      # flash.notice = "Username can not be blank"
      # flash.notice = "Password can not be blank"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out. Goodbye"
  end
end
