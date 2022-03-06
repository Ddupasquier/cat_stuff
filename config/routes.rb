Rails.application.routes.draw do
  resources :users
  # resources :cat_toys
  patch "/cat_toys/:id/like", to: "cat_toys#increment_likes"

  resources :cats, only: [:index, :show, :create, :update]
  patch "/cats/:id/like", to: "cats#increment_likes"
  
  resources :cats, only: [:show] do
    resources :cat_toys, only: [:show, :index]
  end

  resources :cat_toys, only: [:index, :show, :create, :destroy]

  resources :cat_owners, only: [:index, :show, :create, :update, :destroy]

  resources :users

  # SESSION AND COOKIE
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/me", to: "users#show"
  
end
