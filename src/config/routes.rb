Rails.application.routes.draw do
  get 'buyer/page'
  resources :listings
  resources :categories
  resources :profiles
  devise_for :users
  root 'home#page'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
