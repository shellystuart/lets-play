Rails.application.routes.draw do
  root "activities#index"
  resources :activities, only: [:index]
  namespace :api do
    resources :items, only: [:index]
    resources :activities, only: [:index]
  end
end
