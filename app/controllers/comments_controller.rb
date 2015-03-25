class CommentsController < ApplicationController

  def create
  # Recipe yummly Id should get passed as hidden input in both cases.
    @yummly = Yummly.find(params[:comment][:rid])
    @recipe = Recipe.where(yummly_id: @yummly.id).
      first_or_create(description: @yummly.name)
    #redirect_to recipe_path(@recipe)
    @comment = @recipe.comments.create(:comment => params[:comment][:comment])
    respond_to do |format|
      format.html { redirect_to recipe_path(id: @recipe.yummly_id) }
      format.js { render :create }
    end
  end



end
