Rails.application.routes.draw do
  get 'session/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'

  get 'bool/list'
  get 'bool/new'
  post 'bool/create'
  patch 'bool/update'
  get 'bool/list'
  get 'bool/show'
  get 'bool/create'
  get 'bool/edit'
  get 'bool/delete'
  get 'bool/update'
  get 'bool/show_subjects'
  
  get '/signup',  to: 'user#index'
  get 'user/create'
  
  get    '/login',   to: 'session#new'
  post   '/login',   to: 'session#create'
  delete '/logout',  to: 'session#destroy'
  get '/logout',  to: 'session#destroy'
  
  get    '/user',   to: 'bool#list'

  
end 

