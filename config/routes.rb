Rails.application.routes.draw do
  # resources :cat_toys
  patch "/cat_toys/:id/like", to: "cat_toys#increment_likes"

  resources :cats, only: [:index, :show, :create, :update]
  patch "/cats/:id/like", to: "cats#increment_likes"
  
  resources :cats, only: [:show] do
    resources :cat_toys, only: [:show, :index]
  end

  resources :cat_toys, only: [:index, :show, :create, :destroy]

  resources :cat_owners, only: [:index, :show, :create, :update, :destroy]

  # get '/cats', to
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
