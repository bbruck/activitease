Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  patch 'bookings/:id/accept', to: 'bookings#accept', as: :accept
  patch 'bookings/:id/decline', to: 'bookings#decline', as: :decline

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :reviews

  resources :activities do
    resources :bookings
  end


  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
