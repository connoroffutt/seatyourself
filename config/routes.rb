Rails.application.routes.draw do
  root 'restaurant#index'


  resources :user do
    resources :reservation, only: [:show, :create, :destroy]
  end
  resources :restaurant do
    resources :reservation, only: [:show]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
