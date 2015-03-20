class ProfilesController < ApplicationController
  before_action :set_profile, except: :create

  def show
    #@user = current_user
    @ingredients = ExcludedIngredient.where(ingredient_name: params[:q])
    ingredient = @ingredients.pluck(:id).to_s
    @diets = AllowedDiet.where(id: params[:diet_id])
    diet = @diets.pluck(:id).to_s
    @allergies = AllowedAllergy.where(id: params[:allergy_id])
    allergy = @allergies.pluck(:id).to_s
    @user.create_profile(excluded_ingredient_id: ingredient,
                         allowed_allergy_id: allergy,
                         allowed_diet_id: diet)

  end

  def new
    @allergies= AllowedAllergy.all
    @diets = AllowedDiet.all
    render :new
  end

#POST /users/:user_id/profile(.:format)
  def create
    @user = current_user
    @user.create_profile(profile_params)
  end

  def edit
    render :edit
  end

private
    # def profile_params
    #   params.require(:profile).permit(:excluded_ingredient_id,
    #                                   :allowed_allergy_id,
    #                                   :allowed_diet_id)
    # end

    def set_profile
      @user = current_user
      @profile = @user.profile
    end

end
