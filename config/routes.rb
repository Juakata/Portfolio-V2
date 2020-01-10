Rails.application.routes.draw do
  root 'static_pages#home'
  resources :comments
  resources :users
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'

end
