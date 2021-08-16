Rails.application.routes.draw do
  devise_for :users
  root "events#index"

  get "/events", to: "events#index"
end
