class HomeController < ApplicationController

  def search
    unless params[:q].nil?
      if current_user.try(:profile)
        @profile = current_user.profile
        @query = Yummly.search(params[:q],
                 params={ :requirePictures => true,
                          :maxResult=>12,
                          :start=>12,
                          :excludedIngredient => @profile.excluded_ingredients,
                          :allowedAllergy => @profile.allowed_allergies,
                          :allowedDiet => @profile.allowed_diets })
      else
        @query = Yummly.search(params[:q], params={:requirePictures => true,
                                                   :maxResult=>12,
                                                   :start=>12})

      end
    end
  end

private


end
