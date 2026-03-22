class FavouritesController < ApplicationController
  before_action :require_authentication

  def create
    recipe = Recipe.find(params[:recipe_id])
      Current.user.favourites.create(recipe: recipe)
      redirect_to recipe
  end

  def destroy
    recipe = Recipe.find(params[:recipe_id])
      favourite = Current.user.favourites.find_by(recipe: recipe)
      favourite.destroy if favourite
      redirect_to recipe
  end
end
