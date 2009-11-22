class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
  end
  
  def create
    @user_session = UserSession.new(params[:user_session])
    
    if @user_session.save
      redirect_to session[:return_to] || root_url
      flash[:notice] = "Hi, #{current_user.username}"
    else
      render(:action => "new")
      flash[:notice] = "Wrong username and/or password"
    end
  end
  
  def destroy
    current_user.destroy
    redirect_to root_url
    flash[:notice] = "Successfully logged out"
  end
end
