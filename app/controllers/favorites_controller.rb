class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
  end

  def show
    @favorite = Favorite.find(params[:id])
    @fav_user = User.find(@favorite.user_id)
    @user_comment = User.find(@comment.user_id)
    @comment = Comment.find(params[:id])
  end

  def create
    # fighters/:id/favourites
    @favorite = Favorite.create(user_id: 1, fighter_id: params[:fighter_id] )
    # redirect_to fighter_path(params[:fighter_id])
    redirect_to favorites_path
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.delete
    redirect_to favorites_path
  end

end
