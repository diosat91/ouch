Rails.application.routes.draw do
  devise_for :users
	root to: "pages#home"

	namespace :dashboard do
		resources :teams
		resources :accidents
	end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
