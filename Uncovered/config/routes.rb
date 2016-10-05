Rails.application.routes.draw do
  root 'users#home'
  devise_for :users

  resources :pictures
  get '/users/pictures/new', to: 'pictures#new'
  post '/users/pictures/create', to: 'pictures#create'
  get '/pictures/#{:user_id}/edit', to: 'pictures#edit'

  resources :pictures do
  member do
    put "like", to: "pictures#upvote"
    put "dislike", to: "pictures#downvote"
  end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
