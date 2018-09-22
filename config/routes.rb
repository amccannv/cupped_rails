Rails.application.routes.draw do

  # root home page
  root 'static_pages#home'

  # static page routing
  get 'static_pages/home'
  get 'static_pages/help'
end
