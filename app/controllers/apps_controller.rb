class AppsController < ApplicationController
  before_filter :require_user, :only => [:new, :create]
  
  def index
    @apps = App.all
  end
  
  # TODO: Rescue if you can't find a specific app.
  
  # TODO: Use a permalink to be cool, something like 1234-my-cool-app.
  # The reasoning for this is that find will call to_i on it, looking up just the 1234 part.
  def show
    @app = App.find(params[:id])
  end
  
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
    @vote = Vote.new
  end
end
