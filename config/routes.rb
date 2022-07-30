Rails.application.routes.draw do
  resources :users, except: [:new]
  root 'pages#index'
  get 'welcome', to: 'pages#welcome'
  get 'signup', to: 'users#new'
  delete 'logout', to: 'sessions#destroy'
end