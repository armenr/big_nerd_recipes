class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipes_params = params.require(:recipe).permit(
      :name, :description, :preparation_time, :servings_yielded)
    @recipe = Recipe.new(recipes_params)

    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

end
