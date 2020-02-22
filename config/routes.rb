Rails.application.routes.draw do
  devise_for :users
	root to: "pages#home"

	get 'dashboard', to: 'dashboards#show'

	namespace :dashboard do
		resources :teams
		resources :accidents
	end

	resources :users, only: [:show, :edit, :update, :destroy]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
