Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  
  # retreve the user's data from the database using the session hash
  get "/me", to: "users#show"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
