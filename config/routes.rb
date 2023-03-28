Rails.application.routes.draw do

  get "pays", to: "pay#index"
  get "pays/:id", to: "pay#show"
  post '/pays', to: 'pays#create'
  get "pesapal/callback", to: "pays#pesapal_callback"
  
  resources :pays
  resources :books
  resources :destnations
  resources :usrs

  # get"/", to: "destnations#index"

  post '/login', to: "sessions#create"
  post '/signup', to: "usrs#create"
  delete '/logout', to: "sessions#destroy"# resource :sessions, only: [:create, :destroy]
  #   post 'login', to: 'sessions#create'
end