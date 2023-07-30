Rails.application.routes.draw do
  
  resources :talks do
    resource :talk_user, module: :talks, only: [:update]
  end

  resources :speakers

  devise_for :users

  authenticated :user do
    root to: "talks#index", as: :user_root
  end

  root to: "main#index"
 
end
