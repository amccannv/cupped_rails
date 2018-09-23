Rails.application.routes.draw do

  # root home page
  root 'static_pages#home'

  # users
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  resources :users

  # static page routing
  get '/help', to: 'static_pages#help'
end
