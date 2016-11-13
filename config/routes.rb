Rails.application.routes.draw do

  resources :user
  resources :restaurant
  resources :reservation


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
