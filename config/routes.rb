Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "users/sessions" }

  root to: "users#sign_in"
  post "users/sign_in", to: "users#create"
  resources :users, only: [:new, :create, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
