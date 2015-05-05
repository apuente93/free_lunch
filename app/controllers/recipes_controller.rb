class RecipesController < ApplicationController
#  def index 
#    @recipe = Recipe.all
#  end
  def new
    @recipes = Recipe.all
  end
  
  def create
    @recipes = Recipe.new(recipe_params)
      redirect_to 'new'
  end
  

  private

    def recipe_params
      params.require(:recipes).permit(:name, :taste)
    end

end