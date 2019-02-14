class FightersController < ApplicationController

  def index
    @fighters = Fighter.all
  end

  def show
    @fighter = Fighter.find(params[:id])
  end

  def destroy
    @fighter = Fighter.find(params[:id])
    @fighter.delete
    redirect_to fighters_path
  end

end
