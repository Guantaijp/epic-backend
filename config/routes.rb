Rails.application.routes.draw do
  
  resources :pays
  resources :books
  resources :destnations
  resources :usrs

  
  post '/login', to: "sessions#create"
  post '/signup', to: "usrs#create"
  delete '/logout', to: "sessions#destroy"
  # delete '/logout', to: "usrs#logout"
 # resources :users, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



 

  # resource :sessions, only: [:create, :destroy]
  #   post 'login', to: 'sessions#create'




end
