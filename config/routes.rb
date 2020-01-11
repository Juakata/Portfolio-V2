Rails.application.routes.draw do
  root 'comments#index'
  resources :comments
  resources :users
  get '/signin', to: 'sessions#new', as: 'sign_in'
  post '/signin', to: 'sessions#create'

end
