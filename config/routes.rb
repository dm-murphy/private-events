Rails.application.routes.draw do
  get "/events", to: "events#index"
end
