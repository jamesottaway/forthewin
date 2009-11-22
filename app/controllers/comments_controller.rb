class CommentsController < ApplicationController
  before_filter :find_app
  before_filter :require_user
  
  def create
    @comment = @app.comments.build(params[:comment].merge(:user => current_user))
    
    if @comment.save
      redirect_to @comment.app
      flash[:notice] = "Thanks for the comment"
    end
  end
  
  private
  def find_app
    @app = App.find(params[:app_id])
  end
end
