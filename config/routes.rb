require 'sidekiq/web'
Rails.application.routes.draw do
  resources :speakers
  resources :talks

  get 'about', to: 'about#index'
  
  #Notifications
  post 'notifications/read_all', to: 'notifications#read_all', as: :read_all

  get 'notification_settings', to: 'notification_preferences#notification_settings'
          
  patch 'notification_settings', to: 'notification_preferences#update'

  #Onboarding
  get '/onboarding', to: 'users#onboarding'

  get '/onboarding_form', to: 'users#onboarding_form'

  get '/onboarding_preview', to: 'users#onboarding_preview'
  
  #Users
  devise_for :users, controllers: { registrations: "registrations" }

  get '/users/:id', to: 'users#show'

  resources :users, :only =>[:show]

  get '/user_profile', to: 'users#profile'

  resource :user do 
    resources :notifications 
  end 

  resources :talks_users

  authenticated :user do
    root to: "talks#index", as: :user_root
  end

  root to: "main#index"

  authenticate :user, lambda { |u| u.role == "admin" } do
    mount Sidekiq::Web => '/sidekiq'
  end
  
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

end
