Rails.application.routes.draw do
  root to: "users#sign_in"
  resources :users, only: [:new, :create, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
