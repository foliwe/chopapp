Rails.application.routes.draw do
  root 'home#index'

  get 'user/:id', to: 'home#profile'


  devise_for :users
  resources :recipes
end

