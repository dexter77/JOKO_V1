Rails.application.routes.draw do
  devise_for :users

  root to: "users#sign_in"
  post "users/user", to: "users#show"
  # get "users/new", to: "users#new", as: :new_user
  # get "users/:id", to: "users#show", as: :user
  # get "users/:id/sign_out", to: "users#home", as: :sign_out
  # post "users", to: "users#create"
  resources :users, only: [:new, :create, :show, :destroy ] do
    resources :acomptes
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
