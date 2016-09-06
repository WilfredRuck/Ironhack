Rails.application.routes.draw do
	get '/', to: 'site#home'  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	get '/contact', to: 'site#contact'

	get '/say_name/:name', to: 'site#say_name'
end
