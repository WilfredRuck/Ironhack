Rails.application.routes.draw do
	get '/', to: 'site#home'  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	get '/contact', to: 'site#contact'

	get '/say_name/:name', to: 'site#say_name'

	resources :projects, only: [:index, :show, :new, :create] do
		resources :time_entries, except: [:show]
	end
	
end
