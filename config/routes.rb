Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_for :users

  resources :users, only: [:show] do
    resources :events, only: [:index]
  end

  resources :events do
    resources :reservations, only: [:index, :create]
  end

  resources :reservations, only: [:destroy]
end
