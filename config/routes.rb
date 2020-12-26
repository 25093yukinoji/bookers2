Rails.application.routes.draw do
  devise_for :users
  root to: 'books#index'
  resources :books, only: [:new, :create, :index, :show, :destroy]

  resources :users, only: [:show, :edit, :update]
end
