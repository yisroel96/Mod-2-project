class FightersController < ApplicationController

  def index
    @fighters = Fighter.all
    @fighter = Fighter.new
    @weight_class = ["Flyweight", "Bantamweight", "Featherweight", "Lightweight", "Welterweight", "Middleweight", "Light-Heavyweight", "Heavyweight", "Super-Heavyweight"]
  end

  def show
    @fighter = Fighter.find(params[:id])
    @favorite = Favorite.new
    @comment = Comment.new
  end

  def new
    @fighter = Fighter.new
  end

  def create
    @fighter = Fighter.create(fighter_params)

    redirect_to fighters_path
  end

  def edit
    @fighter = Fighter.find(params[:fighter_id])
  end

  def update
    @fighter = Fighter.find(params[:id])
    @fighter.update(fighter_params)
    redirect_to fighter_path
  end

  def destroy
    @fighter = Fighter.find(params[:id])
    @fighter.delete
    redirect_to fighters_path
  end

  def ok
    "sup"
  end

  private

  def fighter_params
    params.require(:fighter).permit(:name, :nickname, :weight_class, :country, :home)
  end

end
