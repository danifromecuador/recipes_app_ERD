Rails.application.routes.draw do
  get 'health', to: 'health#health'
  resources :users, only: [:index, :show, :create, :destroy]
  resources :recipes, only: [:index, :show, :create, :edit, :destroy]
end
