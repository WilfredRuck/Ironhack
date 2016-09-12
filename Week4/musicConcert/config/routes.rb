Rails.application.routes.draw do



	get '/', to: 'site#home'
	
	get '/concerts', to: 'concert#index'

	get '/concerts/new', to: 'concert#new'

	post '/concerts', to: 'concert#create'

	get '/concerts/later', to: 'concert#later'

	get '/concerts/:id', to: 'concert#show'

	get '/concerts/:id/comment/new', to: 'comment#new'

	post '/concerts/:id/comments', to: 'comment#create'


	resources :concerts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
