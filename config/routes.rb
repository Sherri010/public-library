Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: 'users#index'

 get '/users', to: 'users#index', as: 'users'
 get '/users/new', to: 'users#new', as: 'new_user'
 get '/users/:id', to: 'users#show', as: 'user'
 post '/users', to: 'users#create'

 get '/login', to: 'sessions#new', as: 'login'
 get '/logout', to: 'sessions#destroy', as: 'logout'
 post '/sessions', to: 'sessions#create'

 get '/libraries', to: 'libraries#index', as: 'libraries'
end
