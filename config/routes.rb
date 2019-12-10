Rails.application.routes.draw do
  root "static_pages#home"
  devise_for :users
  resources :users, only: [:index, :show] do
    resources :friendships, only: [:index, :create, :destroy]
  end
end
