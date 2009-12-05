class VotesController < ApplicationController
  before_filter :require_user
  before_filter :find_app
  
  def create
    @vote = @app.votes.build(:user => current_user)
    flash[:notice] = @vote.save ? "Thanks for voting!" : "Sorry! You have already voted."
    redirect_to @vote.votable
  end
  
  def destroy
    @vote = Vote.find(params[:id])
    @vote.destroy
    flash[:notice] = "Your vote has been removed."
  end
  
  private
    def find_app
      @app = App.find(params[:app_id])
    end
end
