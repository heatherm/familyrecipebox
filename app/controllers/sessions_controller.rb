class SessionsController < ApplicationController
  def create
    session_params = params['/sessions']
    user = login(session_params[:email], session_params[:password], session_params[:remember_me])
    if user
      redirect_back_or_to recipes_url, :notice => "Logged in!"
    else
      flash.now.alert = "Email or password was invalid"
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_url, :notice => "Logged out!"
  end

end
