Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'home/index'
  get "/sessions/new", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :sessions
  resources :users
<<<<<<< HEAD
  resources :styles, only: [:index, :show]
=======

>>>>>>> 28fe0e9549ef9a6a6e2997a2a1132460124d1506
end
