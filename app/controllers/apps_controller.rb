class AppsController < ApplicationController
  
  def new
    @app = App.new
  end
  
  def create
    @app = App.new(params[:app])
  end
end
