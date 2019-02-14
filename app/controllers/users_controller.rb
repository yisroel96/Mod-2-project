class UsersController < ApplicationController

  def index
    @fighters = Fighter.all
  end

  # def all
  #   @user = User.find(params[:id])
  #   @user_favs = @user.favorites
  # end

  def all
      @fighters = Fighter.all
      @comments = Comment.all
      @favorites = Favorite.all
      @camps = Camp.all
  end

  def new
  end


  def create

    @user = User.find_by(name:params[:user][:name])
      if @user
      else
        @user = User.create(user_params)
      end
      redirect_to user_path(@user)
  end


  private


  def user_params
    params.require(:user).permit(:name)
  end

end
