Rails.application.routes.draw do
  resources :talks do
    resource :talks_users, module: :talks, controller: "talks_users", only: [:update]
  end

  get "/my_schedule", to: "talks/talks_users#my_schedule"

  resources :speakers

  devise_for :users

  authenticated :user do
    root to: "talks#index", as: :user_root
    get "/my_schedule", to: "talks/talks_users#my_schedule"
  end

  root to: "main#index"
end
