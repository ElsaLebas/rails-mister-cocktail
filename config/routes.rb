Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: [:show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end

# Exemple for resto and reviews
# resources :restaurants, only: [:new, :create, :index, :show] do
  # resources :reviews, only: [:new, :create]
# end
