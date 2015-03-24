class HomeController < ApplicationController

  def search

    if current_user.try(:profile)
      @profile = current_user.profile
      @query = Yummly.search(params[:q],
               params={ :requirePictures => true,
                        :excludedIngredient => @profile.excluded_ingredients,
                        :allowedAllergy => @profile.allowed_allergies,
                        :allowedDiet => @profile.allowed_diets })
    else
      @query = Yummly.search(params[:q], params={:requirePictures => true})
    #@query = Yummly.search(params[:q], params={:requirePictures => true})
    #undefined method `[]' for nil:NilClass
  # end
    end
  end

private


end
