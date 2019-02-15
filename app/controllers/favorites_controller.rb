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
    @fighter = Fighter.find(params[:favorite][:fighter_id])
    @favorite = Favorite.create(favorite_params)


    # @favorite = Favorite.create(user_id: params[:user_id], fighter_id: params[:fighter_id] )

    redirect_to favorites_path
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.delete
    redirect_to favorites_path
  end

  private

  def favorite_params
    params.require(:favorite).permit(:name, :user_id, :fighter_id)
  end

end
