class CommentsController < ApplicationController

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.create(:comment => params[:comment][:body])
    respond_to do |format|
      format.html { redirect_to [@user, @recipe] }
      format.js { render :create }
    end
  end

  def create
  # Recipe yummly Id should get passed as hidden input in both cases.
    @yummly = Yummly.find(params[:rid])
    @recipe = Recipe.where(yummly_id: @yummly.id).
      first_or_create(description: @yummly.name)
    redirect_to recipe_path(@recipe)
  end



end
