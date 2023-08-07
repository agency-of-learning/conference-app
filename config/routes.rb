require 'sidekiq/web'
Rails.application.routes.draw do
  resources :speakers
  resources :talks

  resource :user do 
    resources :notifications 
  end 
  post 'notifications/read_all', to: 'notifications#read_all', as: :read_all
  post 'notifications/read', to: 'notifications#read', as: :read
  devise_for :users

  resources :talks_users

  authenticated :user do
    root to: "talks#index", as: :user_root
  end

  root to: "main#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  authenticate :user, lambda { |u| u.role == "admin" } do
    mount Sidekiq::Web => '/sidekiq'
  end
  
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

end
