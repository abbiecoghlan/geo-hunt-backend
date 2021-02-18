Rails.application.routes.draw do
  resources :clues
  resources :attempts
  resources :puzzles
  resources :users
  
  post "/login", to: "users#login", as: "login"
  # get "/profile/:id", to: "users#profile", as: "profile"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
