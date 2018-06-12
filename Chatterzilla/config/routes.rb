Rails.application.routes.draw do
  get 'users/new'

  root   'sessions#new'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  get    '/help',    to: 'sessions#help'
  get    '/about',   to: 'sessions#about'
  get    '/contact', to: 'sessions#contact'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :sessions
end