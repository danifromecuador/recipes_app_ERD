class FoodsController < ApplicationController
  def index
    foods = Food.all
    render json: foods, status: :ok
  end

  def create
    food = Food.create!(food_params)
    if food.valid?
      render json: 'food was created', status: :created
    else
      render json: food.errors.messages, status: :bad_request
    end
  end

  def destroy
    food = Food.find(params[:id])
    food.recipe_foods.destroy_all
    food.destroy
    render json: 'Food deleted successfully', status: :ok
  end

  private

  def food_params
    params.permit(:user_id, :name, :unit, :price, :quantity)
  end
end
