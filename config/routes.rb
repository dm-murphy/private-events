Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show]
  root "events#index"

  get 'events/index'
  get 'events/create'
end
