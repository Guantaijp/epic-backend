Rails.application.routes.draw do
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



end
