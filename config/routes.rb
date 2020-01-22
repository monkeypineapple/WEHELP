Rails.application.routes.draw do
  resources :reviews
  resources :comments
  resources :posts
  resources :topics
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get '/signup', to: 'users#new', as: 'signup'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get '/', to: 'sessions#new', as: 'home'
  post '/login', to: 'sessions#create', as: 'login'
  delete '/delete_account', to: 'users#destroy', as: 'delete_account'
end
