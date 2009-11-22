class AppsController < ApplicationController
  
  def new
    @app = App.new
  end
end
