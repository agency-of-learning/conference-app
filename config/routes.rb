require 'sidekiq/web'
Rails.application.routes.draw do
  resources :speakers
  resources :talks

  resource :user do 
    resources :notifications 
  end 
  
  post 'notifications/read_all', to: 'notifications#read_all', as: :read_all
 
  get '/onboarding', to: 'users#onboarding'
  get '/onboarding_form', to: 'users#onboarding_form'

  get '/onboarding_preview', to: 'users#onboarding_preview'
  get '/users/profile', to: 'users#profile'
  
  devise_for :users, controllers: { registrations: "registrations" }

  get 'notification_settings', to: 'notification_preferences#notification_settings'
          
  patch 'notification_settings', to: 'notification_preferences#update'

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
