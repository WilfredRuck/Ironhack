Rails.application.routes.draw do
	get '/', to: 'contacts#home'  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	get '/contacts', to: 'contacts#contacts'
end
 