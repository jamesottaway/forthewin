class VotesController < ApplicationController
  before_filter :require_user
  before_filter :find_app
  
  def create
    @vote = @app.votes.build(:user => current_user)
    if @vote.save
      redirect_to @vote.votable
      flash[:notice] = "Thanks for voting!"
    end
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
