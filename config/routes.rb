Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'home/index'
  get "/sessions/new", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :sessions
  resources :posts, only: [:new, :create]
  resources :users

  resources :styles, only: [:index, :show]
  resources :user_styles, only: [:index, :show]
  get '/', to: 'application#index'
  post '/new', to: 'application#index'


  resources :styles, only: [:index, :show]

end
