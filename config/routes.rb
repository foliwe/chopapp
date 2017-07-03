Rails.application.routes.draw do
  
  root 'home#index'

  get 'user/:id', to: 'home#profile'

  devise_for :users

   authenticated :user do
    root 'recipes#index', as: :authenticated_root
  end
  
  
  resources :recipes do 
    collection do
      get :traditional
      get :meat
      get :fish
      get :pastry
    end
    resources :comments
  end

  resources :favorite_recipes, only: [:create, :destroy]







end

 