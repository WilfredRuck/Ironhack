Rails.application.routes.draw do
  get '/', to: 'site#home' ## For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/users/index'

  get '/users/:id', to: 'users#show'

  post '/users', to: 'users#create'

  get 'users/:id', to: 'users#destroy'



  get 'product/index'

  get 'product/show'

  get 'product/create'

  get 'product/destroy'


  

end
