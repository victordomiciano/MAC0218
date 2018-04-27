Rails.application.routes.draw do
  get 'manda/index'

  resources :logins

  root 'logins#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
