Rails.application.routes.draw do
  root 'routes#root'
  resources :comments
  resources :users
  resources :areas
  resources :profiles
  resources :networks
  resources :projects
  get 'edit_project_form/:id', to: 'areas#edit_project_form', as: 'edit_project_form'
  get '/maintenance', to: 'maintenances#main', as: 'main'
  get '/activate', to: 'users#activate', as: 'activate'
  get '/deactivate', to: 'users#deactivate', as: 'deactivate'
  get 'form_project/:id', to: 'areas#form_project', as: 'form_project'
  get '/signin', to: 'sessions#new', as: 'sign_in'
  post '/signin', to: 'sessions#create'
  get '/all_messages', to: 'comments#all_messages', as: 'all_messages'
end
