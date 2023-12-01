class RecipeFoodsController < ApplicationController
  def index
    recipe_foods = RecipeFood.all
    render json: recipe_foods, status: :ok
  end

  def show
    recipe_food = RecipeFood.find(params[:id])
    render json: recipe_food, status: :ok
  end

  def create
    recipe_food = RecipeFood.create!(recipe_food_params)
    if recipe_food.valid?
      render json: 'recipe_food was created', status: :created
    else
      render json: recipe_food.errors.messages, status: :bad_request
    end
  end

  def destroy
    recipe_food = RecipeFood.find(params[:id])
    recipe_food.destroy
    render json: 'RecipeFood deleted successfully', status: :ok
  end

  private

  def recipe_food_params
    params.permit(:recipe_id, :food_id, :quantity)
  end
end
