class RecipesController < ApplicationController
  def search
    @search_term = params[:ingredient]
    @recipes = Recipe.for(@search_term)
  end

  def show
    @id_r = params[:id]
    @recipe = Recipe.find(@id_r)
  end
  
  def browse
  	@rand_num = params[:random]
    @rand_recipes = Recipe.for(@rand_num)
  end
  
end