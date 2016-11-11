class RecipesController < ApplicationController
  def search
    @search_term = params[:ingredient]
    @recipes = Recipe.for(@search_term)
  end

  def show
    @id_r = params[:id]
    @recipe = Recipe.find(@id_r)
  end

	# need to figure out a way to show recipe with random id?
  def browse
  	@id_r = params[:id]
    @recipe = Recipe.find(@id_r)
  	# random 3 digit number to put in array = rand(100...999)
  end
  
end