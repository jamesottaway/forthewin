class CommentsController < ApplicationController
  before_filter :find_app
  
  def create
    @comment = @app.comments.build(params[:comment])
    
    if @comment.save
      redirect_to @comment.app
      flash[:notice] = "Thanks for the comment"
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "Your comment has been deleted."
    redirect_to app_path(@app)
  end
  
  private
  def find_app
    @app = App.find(params[:app_id])
  end
end
