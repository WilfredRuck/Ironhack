Rails.application.routes.draw do
resources :sandwiches, only: [:index, :show], controller: "sandwich_views"	
	scope "/api" do
  		resources :ingredients
  		resources :sandwiches
  		post '/sandwiches/:id/ingredients/add', to: 'sandwiches#add'
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
