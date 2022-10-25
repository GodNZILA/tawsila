Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 resources :bookings

  resources :offres do
    resources :bookings, only: %i[new create]
  end
  resources :conducteurs do
    resources :bookings, only: %i[index show edit update destroy]
  end
  resources :passagers do
    resources :bookings, only: %i[index show edit update destroy]
  end
  resources :users do
    resources :reviews, only: %i[create new index]
  end

  resources :voitures

  resources :users, only: %i[show edit update]
end
