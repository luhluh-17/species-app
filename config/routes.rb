Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations'
  }

  get 'dashboard', to: 'dashboard#index'
  get 'api/species', to: 'dashboard#show'
  get 'profile', to: 'profile#index'
  resources :species
  resources :galleries, except: :index
  resources :publications, except: :index
  root 'pages#index'
end
