class RecipesController < ApplicationController

  def show
    @recipe = Recipe.find_by(yummly_id: params[:id])
    @yummly = Yummly.find(params[:id])
  end

  
end
