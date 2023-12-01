Rails.application.routes.draw do
  get 'health', to: 'health#health'
  resources :users, only: [:index, :show, :create, :destroy]
  resources :foods, only: [:index, :create, :destroy]
  resources :recipes, only: [:index, :show, :create, :edit, :destroy]
  resources :recipe_foods, only: [:index, :show, :create, :edit, :destroy]
end
