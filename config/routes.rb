Rails.application.routes.draw do
  resources :talks
  
  resources :speakers

  devise_for :users

  resources :talks_users

  authenticated :user do
    root to: "talks#index", as: :user_root
  end

  root to: "main#index"
end
