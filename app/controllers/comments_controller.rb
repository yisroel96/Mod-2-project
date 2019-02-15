class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def create
    # fighters/:id/favourites
    @comment = Comment.create(comment_params)
    # redirect_to fighter_path(params[:fighter_id])
    redirect_to fighter_path(@comment.fighter_id)

  end

  def edit
    byebug
    @comment = Comment.find(params[:comment_id])
  end

  def update
    byebug
    @comment = Comment.find(params[:comment_id])
    @comment.update(comment_params)

    redirect_to comments_path
  end

  def destroy
    @comment = Comment.find(params[:comment_id])
    @comment.delete
    redirect_to comment_path
  end


  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :fighter_id)
  end


end
