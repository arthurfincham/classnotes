Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit]
  get 'home/index'
  root to: "home#index"
  resources :notes
  get 'tags/:tag', to: 'notes#index', as: :tag
end
