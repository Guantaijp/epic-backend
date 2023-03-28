Rails.application.routes.draw do
  resources :pays
  resources :books
  resources :destnations
  resources :usrs
  resources :payments
  resources :bookings
  resources :users
  # resources :users, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get"/", to: "destnations#index"

end
