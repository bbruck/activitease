Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  patch 'dashboard', to: 'pages#accept', as: :dashboard_accept
  patch 'dashboard', to: 'pages#decline', as: :dashboard_decline

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :activities do
    resources :bookings
  end

  resources :users do
    resources :reviews
  end

  resources :chatrooms, only: :show


end
