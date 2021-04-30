Rails.application.routes.draw do
  get 'messages/index'
  get 'tearoom_messages/index'
  root 'posts#index'

  resources :users
  resources :posts do
    resources :likes
    resources :comments, only: [:create]
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :messages, only: [:index, :create]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
