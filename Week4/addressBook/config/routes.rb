Rails.application.routes.draw do
	get '/', to: 'contacts#home'  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	post '/contacts', to: 'contacts#contacts'

	get '/contacts/id', to: 'contacts#show'
end
 