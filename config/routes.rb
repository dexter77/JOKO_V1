Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "users/sessions" }

  get "users/new", to: "users#new", as: :new_user
  get "users/sign_out", to: "users#home", as: :sign_out
  get "users/:id", to: "users#show", as: :user
  root to: "users#sign_in"
  post "users", to: "users#create"
  # resources :users, only: [:new, :create, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
