Rails.application.routes.draw do

  root 'restaurants#index'

  resources :users do
    resources :reservations
  end

  resources :restaurants do
    resources :reservations
  end

  resources :sessions, only: [:new, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
