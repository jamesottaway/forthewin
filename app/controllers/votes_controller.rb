class VotesController < ApplicationController
  before_filter :require_user
  before_filter :find_app
  
  def create
    @vote = @app.votes.build(params[:vote].merge!(:user => current_user))
  end
  
  def destroy
    @vote = Vote.find(params[:id])
  end
  
  private
    def find_app
      @app = App.find(params[:app_id])
    end
end
