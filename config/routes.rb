Rails.application.routes.draw do
  root 'comments#index'
  resources :comments
  resources :users
  resources :areas
  resources :profiles
  resources :networks
  get '/signin', to: 'sessions#new', as: 'sign_in'
  post '/signin', to: 'sessions#create'
  get '/all_messages', to: 'comments#all_messages', as: 'all_messages'
end
