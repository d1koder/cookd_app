Rails.application.routes.draw do
  devise_for :users
  resources :chefs
  root to: "chefs#index"
end
