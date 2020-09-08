Rails.application.routes.draw do
  resources :categories
  devise_for :users
  get "/bemvindo", to: "home#index"

  get "/perfil", to: "users#edit"

  resources :users, only: [:update] 

  root to: "home#index"

  resources :articles do
    get "/user/:user_id", to: "articles#from_author", on: :collection
  end

  # get "/articles", to: "articles#index"
  # get "/articles/new", to: "articles#new"
  # get "/articles/:id", to: "articles#show"
  # get "/articles/:id/edit", to: "articles#edit"
  # patch "/articles/:id", to: "articles#update", as: :article
  # post "/articles", to: "articles#create"
  # delete "/articles/:id", to: "articles#destroy"
end
