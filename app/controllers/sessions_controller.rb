class SessionsController < ApplicationController

  def create 
    @user = User.find_by_credentials(params[:user][:email], params[:user][:password])

    if @user.nil?
      flash.now[:errors] = "Could not find user to log in"
      render :new
    else 
      log_in(@user)
      redirect_to bands_url
    end
  end


  def new
  end

  def destroy
    current_user.reset_session_token!
    session[:session_token] = nil 
    redirect_to bands_url
  end

end
