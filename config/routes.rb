Rails.application.routes.draw do
  resources :trials, only: %i[create]
  resources :goals, only: %i[new create]
  resources :plan_of_cares, only: %i[update]
  resources :patients, only: %i[index show new create update] do
    resources :sessions, only: %i[show new create] do
      resources :notes, only: %i[show new create]
    end
  end

  root "patients#index"
end
