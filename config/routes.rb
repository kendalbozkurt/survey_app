Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'surveys#index'
  
  resources :surveys
  resources :answers do
    get "new/:survey_id", to: "answers#new", on: :collection, as: :new_survey
  end
end
