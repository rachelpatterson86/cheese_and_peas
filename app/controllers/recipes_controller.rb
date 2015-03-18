class RecipesController < ApplicationController

  def read #need @query.id
    @recipe = Yummly.find(params[:rid])
  end

end
