class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
  
    if @user.save
      flash[:notice] = "Successfully Registered User"
      redirect_to user_path(@user)
    else
      flash[:notice] = "User already registered. Try again."
      render :action => "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

end