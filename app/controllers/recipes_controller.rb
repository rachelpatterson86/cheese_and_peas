class RecipesController < ApplicationController

  def read(id) #@query.id
    @recipe = Yummly.find(id)
  end

end
