Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "users/sessions" }

  root to: "users#sign_in"
  get "users/new", to: "users#new", as: :new_user
  post "users", to: "users#create"
  get "users/:id", to: "users#show", as: :user
  # resources :users, only: [:new, :create, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
