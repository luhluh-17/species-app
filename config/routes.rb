Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations'
  }

  get 'dashboard', to: 'dashboard#index'
  get 'api/species', to: 'dashboard#show'
  root 'pages#index'
end
