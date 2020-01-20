Rails.application.routes.draw do
  resources :reviews
  resources :comments
  resources :posts
  resources :topics
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
