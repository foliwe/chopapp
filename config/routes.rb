Rails.application.routes.draw do
  root 'home#index'

  get 'user/:id', to: 'home#profile'

   authenticated :user do
    root 'recipes#index', as: :authenticated_root
  end
  
  devise_for :users
  resources :recipes
end

