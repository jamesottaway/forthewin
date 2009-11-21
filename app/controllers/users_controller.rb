class UsersController < ApplicationController

def new
  @user = User.new
end

def create
  @user = User.new(params[:user])
  
  if @user.save
    redirect_to user_path(@user)
    flash[:notice] = "Successfully Registered User"
  end
end

def show
  @user = User.find(params[:id])
end

end
