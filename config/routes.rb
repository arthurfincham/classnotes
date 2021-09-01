Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :guides, only: [:show, :edit]
  get 'home/index'  
  root to: "home#index"
  resources :notes
end
