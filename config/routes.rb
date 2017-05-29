Rails.application.routes.draw do
  resources :tasks, except: :edit

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root to: 'pages#home'
end
