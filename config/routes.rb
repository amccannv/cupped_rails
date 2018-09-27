Rails.application.routes.draw do

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

  # static page routing
  get '/help', to: 'static_pages#help'
end
