Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'

  get 'bool/list'
  get 'bool/new'
  post 'bool/create'
  patch 'bool/update'
  get 'bool/list'
  get 'bool/show'
  get 'bool/edit'
  get 'bool/delete'
  get 'bool/update'
  get 'bool/show_subjects'
  
  
end 

