Rails.application.routes.draw do

   
 #Pay Routes
  get "pays", to: "pays#index"
  get "pays/:id", to: "pays#show"
  post '/pays', to: 'pays#create'
  get "pesapal/callback", to: "pays#pesapal_callback"
  
  # resources :pays
  # resources :destnations
  # resources :usrs
  # resources :books, only: [:index, :create, :update, :destroy, :show]
 
#Login Routes
  post '/login', to: "sessions#create"
  post '/signup', to: "usrs#create"
  delete '/logout', to: "sessions#destroy"



  # Books Routes
  get '/books', to: 'books#index'
  post '/books', to: 'books#create'
  get '/books/:id', to: 'books#show'
  patch '/books/:id', to: 'books#update'
  delete '/books/:id', to: 'books#destroy'


  # Usrs Routes
  get '/usrs', to: 'usrs#index'
  post '/usrs', to: 'usrs#create'
  get '/usrs/:id', to: 'usrs#show'
  patch '/usrs/:id', to: 'usrs#update'
  delete '/usrs/:id', to: 'usrs#destroy'

  # Destnation Routes
  get '/destnations', to: 'destnations#index'
  post '/destnations', to: 'destnations#create'
  get '/destnations/:id', to: 'destnations#show'
  patch '/destnations/:id', to: 'destnations#update'
  delete '/destnations/:id', to: 'destnations#destroy'


end