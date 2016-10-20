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
 get '/libraries/new', to: 'libraries#new', as: 'new_library'
 get '/libraries/:id', to: 'libraries#show', as:'library'
 post '/libraries', to: 'libraries#create'

 get '/users/:user_id/libraries', to: 'library_users#index', as: 'user_libraries'
 post '/libraries/:library_id/users', to: 'library_users#create', as: 'library_users'
end
