Rails.application.routes.draw do
  get 'user/index'
  get 'user/show'
  devise_for :users
  root "events#index"

  resources :events
end
