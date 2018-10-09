Rails.application.routes.draw do

  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  # root home page
  root 'static_pages#home'

  # user login/logout
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # users
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]

  # static page routing
  get '/help', to: 'static_pages#help'
end
