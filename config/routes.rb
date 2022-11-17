Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations'
  }

  get 'api/species', to: 'dashboard#show'
  root 'dashboard#index'
end
