Rails.application.routes.draw do
  devise_for :users
resources :sandwiches, only: [:index, :show], controller: "sandwich_views"	
	scope "/api" do
  		resources :ingredients
  		resources :sandwiches
  		post '/sandwiches/:id/ingredients/add', to: 'sandwiches#add'
	end

	root 'users#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
