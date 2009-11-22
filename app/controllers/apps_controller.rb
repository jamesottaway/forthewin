class AppsController < ApplicationController
  before_filter :require_user, :only => [:new, :create]
  
  def new
    @app = App.new
  end
  
  def create
    @app = App.new(params[:app])
    
    if @app.save
      redirect_to app_path @app
      flash[:notice] = "App submitted successfully"
    else
      render :action => :new
    end
  end
  
  def index
    @apps = App.all
  end
  
  def show
    @app = App.find(params[:id])
    @comment = Comment.new
  end
end
