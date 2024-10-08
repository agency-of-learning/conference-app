require 'sidekiq/web'
Rails.application.routes.draw do

  authenticate :user, lambda { |u| u.role == "admin" } do
    mount AhoyCaptain::Engine => '/ahoy_captain'
    mount Flipper::UI.app(Flipper) => '/flipper'
  end
  mount Avo::Engine, at: Avo.configuration.root_path

  #Talks and Speakers
  resources :speakers, :only => [:show]
  resources :talks, :only => [:index, :show] do
    resource :my_schedule, :only => [:index, :create, :destroy], controller: "talks_users"
  end

  #Contributors
  resources :contributors, :only => [:index]

  #Comments
  resources :comments, :only => [:new, :create]

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

  authenticated :user do
    root to: "talks_users#index", as: :user_root
  end

  authenticate :user, lambda { |u| u.role == "admin" } do
    mount Sidekiq::Web => '/sidekiq'
  end

  root to: "main#index"
  
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  #Added constraints in order to ensure active storage could be accessed
  get '*pages', to: 'talks#index', format: false,  constraints: lambda { |request| !request.fullpath.include?('rails/active_storage') }

end
