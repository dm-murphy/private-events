Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show]
  root "events#index"

  resources :events, only: [:index, :show, :create, :new, :edit, :update]
  resources :invitations, only: [:index, :show, :create, :new]
end
