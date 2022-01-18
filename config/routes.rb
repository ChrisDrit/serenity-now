Rails.application.routes.draw do
  resources :trials
  resources :goals, only: %i[new create]
  resources :plan_of_cares, only: %i[update]
  resources :patients, except: %i[new edit destroy] do
    resources :sessions, only: %i[show new create] do
      resources :notes
    end
  end

  root "patients#index"
end
