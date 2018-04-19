Rails.application.routes.draw do
	root 'application#hello'

	resources :logins
end
