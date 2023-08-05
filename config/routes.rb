Rails.application.routes.draw do
  require 'sidekiq/web'
  resources :speakers
  resources :talks
  resources :notifications
  devise_for :users

  authenticated :user do
    root to: "talks#index", as: :user_root
  end

  root to: "main#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  authenticate :user do
    mount Sidekiq::Web => '/sidekiq'
  end
end
