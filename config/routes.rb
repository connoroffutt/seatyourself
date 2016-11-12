Rails.application.routes.draw do

  root 'restaurant#index'

  resources :users, only: [:new, :create]

  get "users/:id/edit" => "users#edit", as: "edit_user"
  patch "users/:id" => "users#update"

  resources :restaurant
  resources :reservation
  resources :sessions, only: [:new, :create, :destroy]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
