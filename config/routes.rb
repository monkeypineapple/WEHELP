Rails.application.routes.draw do
  resources :reviews, except: [:new]
  resources :comments, except: [:new]
  resources :posts
  resources :topics
  resources :users, except: [:new]
  resources :sessions, only: [:new, :create, :destroy]

  get '/signup', to: 'users#new', as: 'signup'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get '/', to: 'sessions#new', as: 'home'
  post '/login', to: 'sessions#create', as: 'login'
  delete '/delete_account', to: 'users#destroy', as: 'delete_account'
  get '/posts/:id/comments/new', to: 'comments#new', as: 'new_comment'
  get '/users/:id/reviews/new', to: 'reviews#new', as: 'new_review'
end
