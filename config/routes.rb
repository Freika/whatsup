Rails.application.routes.draw do
  resources :tasks
  resources :reports, only: :update

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root to: 'pages#home'
end
