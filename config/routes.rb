Rails.application.routes.draw do

  get "pays", to: "pay#index"
  get "pays/:id", to: "pay#show"
  post '/pays', to: 'pays#create'
  get "pesapal/callback", to: "pays#pesapal_callback"
  
  resources :pays
  resources :destnations
  resources :usrs
  resources :books, only: [:index, :create, :update, :destroy, :show]
 
  # resources :users, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get"/", to: "books#index"
  # get '/books', to: 'books#index'
  # get '/books/:id', to: 'books#show'
  # delete '/books/:id', to: 'books#destroy'
  # post '/books', to: 'books#create'




  # get"/", to: "destnations#index"

  post '/login', to: "sessions#create"
  post '/signup', to: "usrs#create"
  delete '/logout', to: "sessions#destroy"# resource :sessions, only: [:create, :destroy]
  #   post 'login', to: 'sessions#create'
end