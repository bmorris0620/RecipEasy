class RecipeController

  helper_method :search

  def index
    @recipe = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
  
  def search_results
    @recipes = search
  end

  private

  def search
  
    @ingredients
    parameters = {
     "fillIngredients" => false,
     "ingredients" => @ingredients,
     "limitLicense" => false,
     "ranking" => 1,
     "number" => 10
   }
   
  headers:{
    "X-Mashape-Key" => "hzddig7qUsmshIlzyVPqEk6qR5Oup1ShbyAjsnnncJO4GJT8BT",
    "Accept" => "application/json"
  }
  
  response = HTTParty.get("https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/findByIngredients", 
  	headers: headers)

  response['results']
  end

end