Rails.application.routes.draw do

  root 'restaurant#index'

  resources :users

  resources :restaurant
  resources :reservation
  resources :sessions, only: [:new, :create, :destroy]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
