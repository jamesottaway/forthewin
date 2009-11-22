class AppsController < ApplicationController
  before_filter :require_user, :only => [:new]
  
  def new
    @app = App.new
  end
  
  def create
    @app = App.new(params[:app])
    
    if @app.save
      redirect_to apps_path
      flash[:notice] = "App submitted successfully"
    end
  end
  
  def index
    @apps = App.all
  end
end
