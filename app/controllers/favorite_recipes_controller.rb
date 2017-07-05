class FavoriteRecipesController < ApplicationController
  before_action :authenticate_user!

before_action :set_project, except: [:index]
def index
  @favorites = current_user.favorite_recipes
end
  
  def create
    if Favorite.create(favorited: @recipe, user: current_user)
      redirect_to @recipe, notice: 'Recipe added favorited'
    else
      redirect_to @recipe, alert: 'Something went wrong...*sad panda*'
    end
  end
  
  def destroy
    Favorite.where(favorited_id: @recipe.id, user_id: current_user.id).first.destroy
    redirect_to @recipe, notice: 'Recipe is no longer in favorites'
  end
  
  private
  
  def set_project
    @recipe = Recipe.friendly.find(params[:recipe_id] || params[:id])
  end


end
