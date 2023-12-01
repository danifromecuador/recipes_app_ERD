class RecipesController < ApplicationController
  def index
    recipes = Recipe.all
    render json: recipes, status: :ok
  end

  def show
    recipe = Recipe.find(params[:id])
    render json: recipe, status: :ok
  end

  def create
    recipe = Recipe.create!(recipe_params)
    if recipe.valid?
      render json: 'recipe was created', status: :created
    else
      render json: recipe.errors.messages, status: :bad_request
    end
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    render json: 'Recipe deleted successfully', status: :ok
  end

  private

  def recipe_params
    params.permit(:user_id, :name, :prep_time, :cook_time, :description, :public)
  end
end
