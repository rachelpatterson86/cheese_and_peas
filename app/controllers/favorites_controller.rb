class FavoritesController < ApplicationController

  def create
    @yummly = Yummly.find(params[:rid])
    @recipe = Recipe.where(yummly_id: @yummly.id).
      first_or_create(description: @yummly.name)
    @favorite = @recipe.favorites.create(user_id: current_user.id, recipe_id: @recipe.id)
    respond_to do |format|
      format.html { redirect_to recipe_path(id: @recipe.yummly_id) }
      format.js { render :create }
    end
  end
end
