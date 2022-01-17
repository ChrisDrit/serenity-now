Rails.application.routes.draw do
  resources :goals, only: %i[new create]
  resources :plan_of_cares, only: %i[update]
  resources :patients, except: %i[edit destroy]

  root "patients#index"
end
