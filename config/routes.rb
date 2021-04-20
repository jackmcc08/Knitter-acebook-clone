Rails.application.routes.draw do
  root 'post#index'
  
  resources :posts
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get 'logout', to: 'sessions#destroy', as: 'logout'
end
