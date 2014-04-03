class RecipesTagsController < ApplicationController

  def index
    @tags = Tag.all
    render('recipes_tags/index.html.erb')
  end

  def new
    @tag = Tag.find(params[:id])
    @recipes = Recipe.all
    render('recipes_tags/new.html.erb')
  end


end
