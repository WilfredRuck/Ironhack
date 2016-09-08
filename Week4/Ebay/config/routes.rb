Rails.application.routes.draw do
  get '/', to: 'site#home' ## For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'product/index'

  get 'product/show'

  get 'product/create'

  get 'product/destroy'


  get 'users/index'

  get 'users/show'

  get 'users/create'

  get 'users/destroy'

end
