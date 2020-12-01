Rails.application.routes.draw do
  root to: "chefs#index"
  devise_for :users
  resources :chefs
  resources :profiles
end
