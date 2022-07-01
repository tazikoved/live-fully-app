Rails.application.routes.draw do
  root to: 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :experiences do
    resources :reviews, only: [:create]
    resources :bookings, only: [ :new, :create, :update ]
  end

  get 'dashboard', to: 'pages#dashboard'

end
