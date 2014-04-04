class RecipesTagsController < ApplicationController
  def delete
    @recipe = Recipe.find(params[:id])
    render('recipes_tags/delete.html.erb')
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    # tags = @recipe.tags.where(params[:tag_id] == tag_id)
    params[:tag_id].each do |t_id|
      @recipe.tags.delete(Tag.find(t_id))
    end
    redirect_to("/recipes/#{@recipe.id}")
  end
end
