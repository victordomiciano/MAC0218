Rails.application.routes.draw do
  get 'chats/show'

  get 'users/new'
  mount ActionCable.server => '/cable'

  root   'users#index'
  #root to: "chats#show"
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :sessions
  resources :chats
end