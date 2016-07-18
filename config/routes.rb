Rails.application.routes.draw do
  root "activities#index"
  resources :activities, only: [:index]
end
