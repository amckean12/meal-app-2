class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @user = current_user
  end

  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else
      redirect_to new_recipe_path
    end
  end

  def show
    @recipe = Recipe.find_by(params[:id])
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :calories, :carbs, :protein, :fats)
  end

end
