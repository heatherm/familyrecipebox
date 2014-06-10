Frb::Application.routes.draw do
  root to: 'pages#root'
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  resources :users
  resources :recipes
  resources :sessions
end
